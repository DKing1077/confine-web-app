import requests
from dataclasses import dataclass
import logging

logger = logging.getLogger(__name__)

@dataclass
class ApiData:
    artist_name: str
    album_name: str
    track_name: str
    commontrack_id: int
    lyrics: str
    features: list

    @classmethod
    def from_dict(cls, data: dict):
        return cls(
            artist_name=data["artist_name"],
            commontrack_id=data["commontrack_id"],
            album_name=data["album_name"],
            track_name=data["track_name"],
            lyrics=data.get("lyrics"),
            features=data.get("features") or [],
        )

    def to_dict(self):
        return {
            "artist_name": self.artist_name,
            "album_name": self.album_name,
            "track_name": self.track_name,
            "commontrack_id": self.commontrack_id,
            "lyrics": self.lyrics,
            "features": self.features,
        }


class MusixMatch:
    def __init__(self, api_key):
        self.classes = []
        self.api_key = api_key
        self.base_url = "https://api.musixmatch.com/ws/1.1"

    def track_search(self, artist=None, track=None):
        logger.info(f'musixmatch api call - track search for: {artist} - {track}')
        classes = []
        search_params = {
            "apikey": self.api_key,
            "f_has_lyrics": 1,
            "s_track_rating": "desc",
            "page_size": 10, "page": 1,
            "s_track_language": "en",
            "f_lyrics_language": "en"
        }
        if artist:
            search_params["q_artist"] = artist
        if track:
            search_params["q_track"] = track
        headers = {
            "Accept-Language": "en-US,en;q=0.9"
        }
        search_url = f"{self.base_url}/track.search"
        res = requests.get(search_url, params=search_params, timeout=10, headers=headers).json()
        tracks = (
            res.get("message", {})
            .get("body", {})
            .get("track_list", [])
        )
        for track in tracks:
            item = track.get("track", {})
            # lyrics = self.get_lyrics(item.get("commontrack_id"))
            # if lyrics == "blank":
            #     print(f'return status 202 blank response - lyrics_body : {item.get("artist_name")} - {item.get("track_name")}')
            # if lyrics:
            # else:
            #     print(f'error status 404 : {item.get("artist_name")} - {item.get("track_name")}')
            classes.append(
                ApiData(
                    artist_name=item.get("artist_name"),
                    commontrack_id=item.get("commontrack_id"),
                    album_name=item.get("album_name"),
                    track_name=item.get("track_name"),
                    lyrics='pending',
                    features=[],
                )
            )
        logger.info('api call succeeded : tracks records returned: %s', len(classes))
        return classes


    def get_lyrics(self, track_id):
        search_url = f"{self.base_url}/track.lyrics.get"
        params_search = {
            "apikey": self.api_key,
            "commontrack_id": track_id,
        }
        res = requests.get(search_url, params=params_search, timeout=10).json()
        status_code = (
            res.get("message", {})
            .get("header", {})
            .get("status_code")
        )
        if status_code == 404:
            return False
        lyrics = (
            res.get("message", {})
            .get("body", {})
            .get("lyrics", {})
            .get('lyrics_body')
        )
        if lyrics == "":
            return "blank"
        return lyrics





