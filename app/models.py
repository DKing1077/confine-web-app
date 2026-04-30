from sqlalchemy import Integer, String, ForeignKey, Text, UniqueConstraint
from sqlalchemy.orm import Mapped, mapped_column, relationship, registry

reg = registry()

@reg.mapped_as_dataclass
class Artists:
    __tablename__ = 'artists'

    # ids
    artist_id: Mapped[int] = mapped_column(Integer, primary_key=True)
    ex_artist_id: Mapped[int] = mapped_column(Integer, nullable=False, unique=True)

    # content
    artist_name: Mapped[str] = mapped_column(String, nullable=False, unique=True)

    # has many tracks, albums, features
    albums: list['Albums'] = relationship('Albums', back_populates='artist', init=False)
    tracks: list['Tracks'] = relationship('Tracks', back_populates='artist', init=False)
    features_on: list["Features"] = relationship("Features", back_populates="artist", init=False)


@reg.mapped_as_dataclass
class Albums:
    __tablename__ = 'albums'

    # ids
    album_id: Mapped[int] = mapped_column(Integer, primary_key=True)
    ex_album_id: Mapped[int] = mapped_column(Integer, nullable=False, unique=True)

    # content
    title: Mapped[str] = mapped_column(String, nullable=False)

    # belongs to an artist
    artist_id: int = mapped_column(Integer, ForeignKey('artists.artist_id'), nullable=False)
    artist: Artists = relationship('Artists', back_populates='albums', init=False)

    # has many tracks
    tracks: list['Tracks'] = relationship('Tracks', back_populates='album', init=False)


@reg.mapped_as_dataclass
class Tracks:
    __tablename__ = 'tracks'

    # ids
    track_id: Mapped[int] = mapped_column(Integer, primary_key=True)
    ex_track_id: Mapped[int] = mapped_column(Integer, nullable=False, unique=True)

    # content
    title: Mapped[str] = mapped_column(String, nullable=False)
    lyrics: Mapped[str] = mapped_column(Text, nullable=True)

    # belongs to artist
    artist_id: int = mapped_column(Integer, ForeignKey('artists.artist_id'), nullable=False)
    artist: Artists = relationship('Artists', back_populates='tracks', init=False)

    # can belong to album
    album_id: Mapped[int | None] = mapped_column(ForeignKey("albums.album_id"), nullable=True)
    album: Albums = relationship('Albums', back_populates="tracks", init=False)

    # has features
    features: list["Features"] = relationship("Features", back_populates="track", init=False)


@reg.mapped_as_dataclass
class Features:
    __tablename__ = 'features'

    # belongs to a track
    track_id: int = mapped_column(Integer, ForeignKey('tracks.track_id'), primary_key=True)
    track: Tracks = relationship('Tracks', back_populates="features", init=False)

    # belongs to an artist
    artist_id: int = mapped_column(Integer, ForeignKey('artists.artist_id'), primary_key=True)
    artist: Artists = relationship('Artists', back_populates="features_on", init=False)

    # one single feature
    UniqueConstraint(track_id, artist_id)




