from app.prompts import classify_search_messages
from app.prompts import classify_concepts_message as build_primary_messages
from app.prompts import transform_lyrics_messages
from app.prompts import classify_semantics_message as build_secondary_messages
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
            temperature=0,
            max_tokens=128
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

    def get_primary_panel(self, track_lyrics):
        messages = build_primary_messages(track_lyrics)
        response = self.client.chat.completions.create(
            model=self.model, messages=messages, temperature=0, max_tokens=128
        )
        res = response.choices[0].message.content
        res = re.sub(r"^```(?:json)?\s*", "", res.strip())
        res = re.sub(r"\s*```$", "", res.strip())

        try:
            primary_panel = json.loads(res)
        except json.JSONDecodeError:
            return None
        return primary_panel

    def get_secondary_panel(self, track_lyrics):
        messages = build_secondary_messages(track_lyrics)
        response = self.client.chat.completions.create(
            model=self.model, messages=messages, temperature=0, max_tokens=128
        )
        res = response.choices[0].message.content
        res = re.sub(r"^```(?:json)?\s*", "", res.strip())
        res = re.sub(r"\s*```$", "", res.strip())

        try:
            secondary_panel = json.loads(res)
        except json.JSONDecodeError:
            return None
        return secondary_panel

    def transform_lyrics(self, lyrics, selected_concepts, selected_semantics, user_instructions=None):
        messages = transform_lyrics_messages(
            lyrics=lyrics,
            selected_concepts=selected_concepts,
            selected_semantics=selected_semantics,
            user_instructions=user_instructions,
        )
        response = self.client.chat.completions.create(
            model=self.model, messages=messages, temperature=0, max_tokens=128
        )
        res = response.choices[0].message.content
        res = re.sub(r"^```(?:json)?\s*", "", res.strip())
        res = re.sub(r"\s*```$", "", res.strip())
        return res





