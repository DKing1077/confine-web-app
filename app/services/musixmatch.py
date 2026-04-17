import requests
from dataclasses import dataclass

@dataclass
class ApiData:
    track_name: str
    commontrack_id: int
    album_id: int
    album_name: str
    artist_id: int
    artist_name: str
    lyrics: str


@dataclass
class MusixMatch:
    def __init__(self, api_key):
        self.classes = []
        self.api_key = api_key
        self.base_url = "https://api.musixmatch.com/ws/1.1"

    def track_search(self, search_params, artist, track):
        classes= []
        search_params["apikey"] = self.api_key
        search_url = f"{self.base_url}/track.search"
        res = requests.get(search_url, params=search_params, timeout=10).json()
        tracks = (
            res.get("message", {})
            .get("body", {})
            .get("track_list", [])
        )
        for track in tracks:
            item = track.get("track", {})
            lyrics = self.get_lyrics(item.get("commontrack_id"))
            classes.append(
                ApiData(
                    track_name=item.get("track_name"),
                    commontrack_id=item.get("commontrack_id"),
                    album_id=item.get("album_id"),
                    album_name=item.get("album_name"),
                    artist_id=item.get("artist_id"),
                    artist_name=item.get("artist_name"),
                    lyrics=lyrics,
                )
            )
        return classes

    def get_lyrics(self, track_id):
        search_url = f"{self.base_url}/track.lyrics.get"
        params_search = {
            "apikey": self.api_key,
            "commontrack_id": track_id,
        }
        res = requests.get(search_url, params=params_search, timeout=10).json()
        tracks = (
            res.get("message", {})
            .get("body", {})
            .get("lyrics", {})
        )
        lyrics = tracks.get('lyrics_body')
        return lyrics





