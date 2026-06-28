from app.prompts import classify_search_messages, classify_concepts_message
from openai import OpenAI
import logging
import json
import re

logger = logging.getLogger(__name__)


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
        messages = classify_search_messages(search)
        response = self.client.chat.completions.create(
            model=self.model,
            messages=messages,
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

        if track_input == 'None':
            track_input = None

        return artist_input, track_input


    def get_concepts(self, track_lyrics):
        messages = classify_concepts_message(track_lyrics)
        response = self.client.chat.completions.create(
            model=self.model,
            messages=messages,
            temperature=0
        )
        logger.info('track concepts response: ', response)



