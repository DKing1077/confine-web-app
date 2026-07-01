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
            "role": "user", "content": track_lyrics,
        }
    ]


def classify_semantics_message(track_lyrics):
    return [
        {
            "role": "user", "content": track_lyrics,
        }
    ]


