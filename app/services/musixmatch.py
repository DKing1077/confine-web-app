import requests
from dataclasses import dataclass

@dataclass
class ApiData:
    ex_artist_id: int
    artist_name: str
    ex_album_id: int
    album_name: str
    ex_track_id: int
    track_name: str
    lyrics: str


class MusixMatch:
    def __init__(self, api_key):
        self.classes = []
        self.api_key = api_key
        self.base_url = "https://api.musixmatch.com/ws/1.1"

    def track_search(self, artist=None, track=None):
        classes = []
        search_params = {
            "apikey": self.api_key,
            "f_has_lyrics": 1,
            "s_track_rating": "desc",
            "page_size": 10, "page": 1,
        }
        if artist:
            search_params["q_artist"] = artist
        if track:
            search_params["q_track"] = track
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
            if lyrics == "blank":
                print(f'return status 202 blank response - lyrics_body : {item.get("artist_name")} - {item.get("track_name")}')
            if lyrics:
                classes.append(
                    ApiData(
                        ex_artist_id=item.get("artist_id"),
                        artist_name=item.get("artist_name"),
                        ex_album_id=item.get("album_id"),
                        album_name=item.get("album_name"),
                        ex_track_id=item.get("commontrack_id"),
                        track_name=item.get("track_name"),
                        lyrics=lyrics,
                    )
                )
            else:
                print(f'error status 404 : {item.get("artist_name")} - {item.get("track_name")}')
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





