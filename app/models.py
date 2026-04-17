from sqlalchemy import Integer, String, ForeignKey, Text
from sqlalchemy.orm import Mapped, mapped_column, relationship, registry

reg = registry()

@reg.mapped_as_dataclass
class Artists:
    __tablename__ = 'artists'
    artist_id: Mapped[int] = mapped_column(Integer, primary_key=True)
    artist_name: Mapped[str] = mapped_column(String, nullable=False, unique=True)

    external_artist_id: Mapped[int] = mapped_column(Integer, nullable=False, unique=True)
    albums: list['Albums'] = relationship('Albums', back_populates='artist', init=False)
    tracks: list['Tracks'] = relationship('Tracks', back_populates='artist', init=False)


@reg.mapped_as_dataclass
class Albums:
    __tablename__ = 'albums'
    album_id: Mapped[int] = mapped_column(Integer, primary_key=True)

    external_album_id: Mapped[int] = mapped_column(Integer, nullable=False, unique=True)
    title: Mapped[str] = mapped_column(String, nullable=False)
    tracks: list['Tracks'] = relationship('Tracks', back_populates='albums', init=False)

    artist_id: int = mapped_column(Integer, ForeignKey('artists.id'), nullable=False)
    artist: Artists = relationship('Artists', back_populates='albums', init=False)


@reg.mapped_as_dataclass
class Tracks:
    __tablename__ = 'tracks'
    track_id: Mapped[int] = mapped_column(Integer, primary_key=True)

    external_track_id: Mapped[int] = mapped_column(Integer, nullable=False, unique=True)
    title: Mapped[str] = mapped_column(String, nullable=False)
    lyrics: Mapped[str] = mapped_column(Text, nullable=True)

    artist_id: int = mapped_column(Integer, ForeignKey('artists.id'), nullable=False)
    artist: Artists = relationship('Artists', back_populates='tracks', init=False)

