from sqlalchemy import Integer, String, ForeignKey, Text
from sqlalchemy.orm import Mapped, mapped_column, relationship, registry

reg = registry()


@reg.mapped_as_dataclass
class Artists:
    __tablename__ = 'artists'

    id: Mapped[int] = mapped_column(Integer, primary_key=True)
    name: Mapped[str] = mapped_column(String, nullable=False)

    albums: list['Albums'] = relationship('Albums', back_populates='artist')
    songs: list['Songs'] = relationship('Songs', back_populates='artist')


@reg.mapped_as_dataclass
class Albums:
    __tablename__ = 'albums'

    id: Mapped[int] = mapped_column(Integer, primary_key=True)
    name: Mapped[str] = mapped_column(String, nullable=False)
    lyrics: Mapped[str] = mapped_column(Text, nullable=True)

    artist_id: int = mapped_column(Integer, ForeignKey('artists.id'), nullable=False)
    artist: Artists = relationship('Artists', back_populates='albums')


@reg.mapped_as_dataclass
class Songs:
    __tablename__ = 'songs'

    id: Mapped[int] = mapped_column(Integer, primary_key=True)
    name: Mapped[str] = mapped_column(String, nullable=False)
    lyrics: Mapped[str] = mapped_column(Text, nullable=True)

    artist_id: int = mapped_column(Integer, ForeignKey('artists.id'), nullable=False)
    artist: Artists = relationship('Artists', back_populates='songs')






