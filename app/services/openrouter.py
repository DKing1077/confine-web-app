from openai import OpenAI
import json
import re


class AIService:
    def __init__(self, api_key, model):
        self.api_key = api_key
        self.model = model
        self.base_url = "https://openrouter.ai/api/v1"
        self.client = OpenAI(
            base_url=self.base_url,
            api_key=self.api_key,
        )

    def parse_search(self, search):
        response = self.client.chat.completions.create(
            model=self.model,
            messages=[
                {
                    "role": "system",
                    "content": (
                        "Classify the search input into the correct search type and values:\n\n"
                        ""
                        "Schema:\n"
                        "{\n"
                        '  "type": "artist_only" | "song_only" | "artist_track",\n'
                        '  "artist": string or null,\n'
                        '  "track": string or null\n'
                        "}\n\n"
                        "Rules:\n"
                        "- If only an artist is present, type = artist_only\n"
                        "- If only a track is present, type = track_only\n"
                        "- If both artist and track are present, type = artist_track\n"
                        "- If unknown, set missing fields to null\n"
                        "- Return JSON ONLY, no explanation, no extra text\n"
                        "Make sure your carefully check and search for an artists name in the input"
                        "E.G Logic - Everyday should not be return as track : logic everyday"
                        "Do NOT include markdown.\n"
                        "Do NOT wrap output in ``` or ```json.\n"
                        "Output must be a single JSON object.\n\n"
                    )
                },
                {"role": "user", "content": search},
            ],
            temperature=0
        )
        res = response.choices[0].message.content
        res = re.sub(r"^```(?:json)?\s*", "", res.strip())
        res = re.sub(r"\s*```$", "", res.strip())

        try:
            return json.loads(res)
        except json.JSONDecodeError:
            return None





