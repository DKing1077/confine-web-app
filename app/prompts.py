import json


def classify_search_messages(search):
    return [
        {
            "role": "system",
            "content": (
                "Classify the search input into the correct artist and track names:\n\n"
                "Schema:\n"
                "{\n"
                '  "artist": string\n'
                '  "track": string, None\n'
                "}\n\n"
                "Rules:\n"
                "- Return the artist and track name exactly the same as its stored on spotify, search and check its the same\n"
                "- Return JSON ONLY\n"
                "- Do NOT include markdown.\n"
                "- Do NOT wrap output in ``` or ```json.\n\n"
                "Make sure you carefully check and search for an artists name in the input\n"
                "E.G logic - everyday should not be returned as track : logic everyday\n"
                "Make sure to place apostrophes exactly the same as its stored on spotify, search and check its the same\n"
                "E.G drake - gods plan should return the track name : God's Plan\n"
                "Make sure to capitalize the letters exactly the same as its stored on spotify, search and check its the same\n"
                "E.G \"NOKIA\" not \"nokia\" \"thank u, next\" not \"Thank you next\"\n"
                "Make sure you carefully check and search for the name of a track in the input\n"
                "E.G \"drake\" is just the name of an artist and the track should be returned as None"
            )
        },
        {"role": "user", "content": search},
    ]


def classify_concepts_message(track_lyrics):
    return [
        {
            "role": "system",
            "content": (
                "You are an expert writing coach and lyrical analyst.\n"
                "Analyze a JSON array of objects where each item has: commontrack_id, track_name, lyrics.\n"
                "Use lyrics only for analysis.\n"
                "Return exactly one object per input item.\n\n"
                "Goal: extract only high-impact, reusable writing concepts that materially improve rewrites.\n"
                "Reject generic or low-signal concepts.\n\n"
                "Return valid JSON only with schema:\n"
                "[\n"
                "  {\n"
                '    "track": string,\n'
                '    "commontrack_id": integer,\n'
                '    "concepts": [\n'
                "      {\n"
                '        "name": string,\n'
                '        "display_concept": string,\n'
                '        "application_instruction": string,\n'
                '        "evidence": string,\n'
                '        "transfer_strength": integer,\n'
                '        "user_visible_value_score": integer,\n'
                '        "implementation_effort_score": integer\n'
                "      }\n"
                "    ]\n"
                "  }\n"
                "]\n\n"
                "Rules:\n"
                "- Output object count must equal input item count.\n"
                "- 'track' must exactly match input 'track_name'.\n"
                "- 'commontrack_id' must exactly match input 'commontrack_id'.\n"
                "- Never include lyrics text in 'track'.\n"
                "- Max 3 concepts per track.\n"
                "- Include only concepts that would noticeably improve a weak draft in one pass.\n"
                "- Reject concepts that could apply to almost any song without lyric-specific proof.\n"
                "- 'display_concept': 6-14 words, concrete and actionable.\n"
                "- 'application_instruction': imperative verb first.\n"
                "- 'evidence': direct quote from same track, <= 12 words.\n"
                "- 'evidence' must be exact contiguous lyrics, no paraphrase, no ellipses.\n"
                "- Use different evidence snippets across concepts when possible.\n"
                "- 'transfer_strength', 'user_visible_value_score', 'implementation_effort_score' are integers 1-10.\n"
                "- If lyrics are too sparse, return empty concepts array for that track.\n"
                "- No markdown, no commentary, no code fences.\n"
            ),
        },
        {
            "role": "user",
            "content": json.dumps(track_lyrics, ensure_ascii=False),
        },
    ]


def classify_semantics_message(track_lyrics):
    return [
        {
            "role": "system",
            "content": (
                "You are a senior semantic extraction engine for creative text.\n"
                "Input is a JSON array of objects, each with: commontrack_id, track_name, lyrics.\n"
                "Analyze each item independently.\n"
                "Use only the item's lyrics field for semantic analysis.\n"
                "Return valid JSON only. No markdown, no prose, no code fences.\n\n"

                "OBJECTIVE\n"
                "Extract high-impact, reusable semantic patterns that can be applied to improve weak user drafts.\n"
                "Prioritize meaning-level structure over stylistic trivia.\n"
                "Only keep semantics with clear user-visible rewrite value.\n\n"

                "OUTPUT SCHEMA (exact)\n"
                "[\n"
                "  {\n"
                "    \"track\": string,\n"
                "    \"commontrack_id\": integer,\n"
                "    \"semantics\": [\n"
                "      {\n"
                "        \"name\": string,\n"
                "        \"display_semantic\": string,\n"
                "        \"application_instruction\": string,\n"
                "        \"evidence\": string,\n"
                "        \"transfer_strength\": integer,\n"
                "        \"user_visible_value_score\": integer,\n"
                "        \"implementation_effort_score\": integer\n"
                "      }\n"
                "    ]\n"
                "  }\n"
                "]\n\n"

                "HARD CONSTRAINTS\n"
                "- Output object count must equal input item count.\n"
                "- 'track' must exactly match input 'track_name'.\n"
                "- 'commontrack_id' must exactly match input 'commontrack_id'.\n"
                "- Max 5 semantics per track.\n"
                "- If text is too sparse/low-signal, return empty semantics array for that item.\n"
                "- Scores must be integers 1-10.\n"
                "- No duplicate semantics within a track.\n"
                "- No extra keys beyond schema.\n\n"

                "WHAT COUNTS AS A SEMANTIC (priority order)\n"
                "1) Core communicative intent (what the speaker is trying to achieve)\n"
                "2) Emotional trajectory (start -> shift -> destination)\n"
                "3) Relational stance (pursuit, reassurance, devotion, dominance, vulnerability, etc.)\n"
                "4) Tension-resolution logic (problem/risk -> coping claim -> release)\n"
                "5) Time orientation (now/future/retrospective; urgency vs duration)\n"
                "6) Agency framing (self-driven, mutual, external force, fate)\n"
                "7) Value frame (freedom, loyalty, intimacy, status, escape, resilience)\n"
                "8) Audience address mode (private \"you\", public crowd, self-talk, adversary)\n\n"

                "FIELD REQUIREMENTS\n"
                "- name: canonical snake_case semantic label, specific not generic.\n"
                "- display_semantic: 6-14 words, concrete and user-comprehensible.\n"
                "- application_instruction: imperative verb first (e.g., \"Reframe...\", \"Shift...\", \"Anchor...\").\n"
                "- application_instruction must describe direct rewrite action, not analysis commentary.\n"
                "- evidence: exact contiguous quote from the same lyrics, <= 12 words.\n"
                "- evidence must be literal substring, no paraphrase, no ellipses.\n"
                "- Prefer distinct evidence snippets across semantics.\n\n"

                "SCORING RUBRIC\n"
                "- transfer_strength (1-10): portability of this semantic pattern to unrelated user text.\n"
                "- user_visible_value_score (1-10): how noticeably output quality improves if applied once.\n"
                "- implementation_effort_score (1-10): difficulty for a model/system to apply reliably.\n\n"

                "QUALITY GATE (reject semantics if any are true)\n"
                "- Too generic to be text-specific.\n"
                "- Primarily stylistic/rhetorical rather than meaning-structural.\n"
                "- Redundant with another selected semantic.\n"
                "- Weak instruction that cannot be directly executed in rewriting.\n"
                "- Evidence does not clearly support the semantic claim.\n\n"

                "SELECTION POLICY\n"
                "- Choose fewer, stronger semantics over many weak ones.\n"
                "- Include only semantics that would materially improve a poor draft in one rewrite pass.\n"
                "- Prefer semantics that combine high transfer_strength and high user_visible_value_score.\n\n"

                "FINAL SELF-CHECK BEFORE OUTPUT\n"
                "- JSON parses with no trailing text.\n"
                "- Exact key names and types.\n"
                "- Track and ID copied exactly.\n"
                "- Evidence constraints satisfied for every semantic.\n"
            ),
        },
        {
            "role": "user",
            "content": json.dumps(track_lyrics, ensure_ascii=False),
        },
    ]


