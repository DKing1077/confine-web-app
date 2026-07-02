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
                "Analyze a JSON array of strings where each item is formatted exactly as: 'track_name: lyrics'.\n"
                "Use lyrics only for analysis. In output, return only the track name (text before the first ':').\n"
                "Return exactly one track object per input item.\n\n"
                "Goal: extract only high-impact, reusable writing concepts that materially improve rewrites.\n"
                "Reject generic or low-signal concepts.\n\n"
                "Return valid JSON only with schema:\n"
                "{\n"
                '  "tracks": [\n'
                "    {\n"
                '      "track": string,\n'
                '      "concepts": [\n'
                "        {\n"
                '          "name": string,\n'
                '          "display_concept": string,\n'
                '          "application_instruction": string,\n'
                '          "evidence": string,\n'
                '          "transfer_strength": integer,\n'
                '          "user_visible_value_score": integer,\n'
                '          "implementation_effort_score": integer\n'
                "        }\n"
                "      ]\n"
                "    }\n"
                "  ]\n"
                "}\n\n"
                "Rules:\n"
                "- Output track count must equal input item count.\n"
                "- 'track' must exactly match the track_name substring before the first ':' in each input item.\n"
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
            "role": "user", "content": track_lyrics,
        }
    ]


