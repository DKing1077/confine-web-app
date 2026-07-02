import json
from typing import Dict, Any, List


REQUIRED_CONCEPT_KEYS = {
    "name",
    "display_concept",
    "application_instruction",
    "evidence",
    "transfer_strength",
    "user_visible_value_score",
    "implementation_effort_score",
}


def _word_count(text: str) -> int:
    return len([w for w in text.strip().split() if w])


def validate_output(output: Dict[str, Any], input_tracks: Dict[str, str]) -> List[str]:
    """
    Returns a list of validation errors.
    Empty list => valid.
    """
    errors = []

    # Root checks
    if not isinstance(output, dict):
        return ["Output must be a JSON object."]
    if "tracks" not in output:
        return ["Missing top-level key: 'tracks'."]
    if not isinstance(output["tracks"], list):
        return ["'tracks' must be an array."]

    tracks = output.get("tracks", [])
    input_keys = list(input_tracks.keys())

    # Count must match
    if len(tracks) != len(input_keys):
        errors.append(
            f"Track count mismatch: expected {len(input_keys)}, got {len(tracks)}."
        )

    # Must match exact input keys
    output_track_names = []
    for i, t in enumerate(tracks):
        if not isinstance(t, dict):
            errors.append(f"tracks[{i}] must be an object.")
            continue

        if "track" not in t:
            errors.append(f"tracks[{i}] missing 'track'.")
            continue

        track_name = t["track"]
        output_track_names.append(track_name)

        if track_name not in input_tracks:
            errors.append(f"tracks[{i}].track '{track_name}' not found in input keys.")

        if "concepts" not in t:
            errors.append(f"tracks[{i}] missing 'concepts'.")
            continue

        concepts = t["concepts"]
        if not isinstance(concepts, list):
            errors.append(f"tracks[{i}].concepts must be an array.")
            continue

        if len(concepts) > 3:
            errors.append(f"tracks[{i}].concepts has {len(concepts)} items (max 3).")

        for j, c in enumerate(concepts):
            if not isinstance(c, dict):
                errors.append(f"tracks[{i}].concepts[{j}] must be an object.")
                continue

            missing = REQUIRED_CONCEPT_KEYS - set(c.keys())
            if missing:
                errors.append(
                    f"tracks[{i}].concepts[{j}] missing keys: {sorted(missing)}."
                )

            # Type checks
            for k in ["name", "display_concept", "application_instruction", "evidence"]:
                if k in c and not isinstance(c[k], str):
                    errors.append(f"tracks[{i}].concepts[{j}].{k} must be string.")

            for k in [
                "transfer_strength",
                "user_visible_value_score",
                "implementation_effort_score",
            ]:
                if k in c and not isinstance(c[k], int):
                    errors.append(f"tracks[{i}].concepts[{j}].{k} must be integer.")
                elif k in c and not (1 <= c[k] <= 10):
                    errors.append(
                        f"tracks[{i}].concepts[{j}].{k} out of range (1-10): {c[k]}."
                    )

            # display_concept 6-14 words
            if "display_concept" in c and isinstance(c["display_concept"], str):
                wc = _word_count(c["display_concept"])
                if wc < 6 or wc > 14:
                    errors.append(
                        f"tracks[{i}].concepts[{j}].display_concept must be 6-14 words (got {wc})."
                    )

            # evidence <= 12 words
            if "evidence" in c and isinstance(c["evidence"], str):
                ew = _word_count(c["evidence"])
                if ew > 12:
                    errors.append(
                        f"tracks[{i}].concepts[{j}].evidence must be <= 12 words (got {ew})."
                    )

    # Ensure exact set match
    if set(output_track_names) != set(input_keys):
        errors.append(
            f"Output track names must exactly match input keys.\n"
            f"Expected: {input_keys}\nGot: {output_track_names}"
        )

    return errors


def render_text(output: Dict[str, Any]) -> str:
    """
    Human-friendly terminal/plaintext renderer.
    """
    lines = []
    tracks = output.get("tracks", [])

    for t in tracks:
        track_name = t["track"]
        concepts = t.get("concepts", [])

        lines.append(f"Track: {track_name}")
        if not concepts:
            lines.append("  (No high-impact concepts extracted)")
            lines.append("")
            continue

        for idx, c in enumerate(concepts, start=1):
            lines.append(f"  {idx}. {c['display_concept']}")
            lines.append(f"     name: {c['name']}")
            lines.append(f"     instruction: {c['application_instruction']}")
            lines.append(f"     evidence: \"{c['evidence']}\"")
            lines.append(
                "     scores: "
                f"transfer={c['transfer_strength']}, "
                f"value={c['user_visible_value_score']}, "
                f"effort={c['implementation_effort_score']}"
            )
        lines.append("")

    return "\n".join(lines).rstrip()


def render_html(output: Dict[str, Any]) -> str:
    """
    Simple HTML renderer for web display.
    """
    html_parts = [
        "<div style='font-family:system-ui,Segoe UI,Arial,sans-serif;max-width:900px;'>"
    ]

    for t in output.get("tracks", []):
        html_parts.append(
            f"<section style='border:1px solid #ddd;border-radius:10px;padding:14px;margin:12px 0;'>"
        )
        html_parts.append(f"<h2 style='margin:0 0 10px 0'>{t['track']}</h2>")

        concepts = t.get("concepts", [])
        if not concepts:
            html_parts.append("<p><em>No high-impact concepts extracted.</em></p>")
        else:
            html_parts.append("<ol style='padding-left:20px;'>")
            for c in concepts:
                html_parts.append("<li style='margin-bottom:10px;'>")
                html_parts.append(f"<strong>{c['display_concept']}</strong><br>")
                html_parts.append(f"<code>{c['name']}</code><br>")
                html_parts.append(f"{c['application_instruction']}<br>")
                html_parts.append(f"Evidence: “{c['evidence']}”<br>")
                html_parts.append(
                    f"<small>Transfer: {c['transfer_strength']} | "
                    f"Value: {c['user_visible_value_score']} | "
                    f"Effort: {c['implementation_effort_score']}</small>"
                )
                html_parts.append("</li>")
            html_parts.append("</ol>")

        html_parts.append("</section>")

    html_parts.append("</div>")
    return "".join(html_parts)


if __name__ == "__main__":
    # Example usage
    input_tracks = {
        "Yeah, Young Money": "all I need is a beauty and a beat ..."
    }

    model_output_json = """
    {
      "tracks": [
        {
          "track": "Yeah, Young Money",
          "concepts": [
            {
              "name": "future-nostalgia hook",
              "display_concept": "Use futuristic imagery to enhance present moment",
              "application_instruction": "Contrast future dates with current emotions to create urgency",
              "evidence": "party like it's 3012 tonight",
              "transfer_strength": 8,
              "user_visible_value_score": 9,
              "implementation_effort_score": 3
            }
          ]
        }
      ]
    }
    """
    output = json.loads(model_output_json)

    errors = validate_output(output, input_tracks)
    if errors:
        print("Output format error — retry generation.")
        for e in errors:
            print("-", e)
    else:
        print(render_text(output))
        # If needed:
        # html = render_html(output)
        # print(html)