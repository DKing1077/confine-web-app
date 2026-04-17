from dataclasses import dataclass

@dataclass
class ArtistRecord:
    artist_id: int
    artist: str
    song_id: int
    title: str
    lyrics: str

@dataclass
class TrackRecord:
    artist: str
    song_id: int
    title: str
    lyrics: str

@dataclass
class AlbumRecord:
    album_id: int
    artist: str
    title: str
    lyrics: str