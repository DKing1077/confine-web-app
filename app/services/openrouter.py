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
                        "Classify the search input into the correct artist and track names:\n\n"
                        "Schema:\n"
                        "{\n"
                        '  "artist": string\n'
                        '  "track": string, Unknown\n'
                        "}\n\n"
                        "Rules:\n"
                        "- Return the artist and track name exactly the same as its stored on spotify, search and check its the same\n"
                        "- Return JSON ONLY\n"
                        "- Do NOT include markdown.\n"
                        "- Do NOT wrap output in ``` or ```json.\n\n"
                        "Make sure your carefully check and search for an artists name in the input\n"
                        "E.G logic - everyday should not be returned as track : logic everyday\n"
                        "Make sure to place apostrophes exactly the same as its stored on spotify, search and check its the same\n"
                        "E.G drake - gods plan should return the track name : God's Plan\n"
                        "Make sure to capitalize the letters exactly the same as its stored on spotify, search and check its the same\n"
                        "E.G \"NOKIA\" not \"nokia\" \"thank u, next\" not \"Thank you next\"\n"
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
            search_params = json.loads(res)
        except json.JSONDecodeError:
            return None

        artist_input = search_params['artist']
        track_input = search_params['track']

        return artist_input, track_input



