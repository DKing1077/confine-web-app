from sqlalchemy import Column, Integer, String, ForeignKey, Text
from sqlalchemy.orm import relationship, registry

reg = registry()


@reg.mapped_as_dataclass
class Artists:
    __tablename__ = 'artists'

    id: int = Column(Integer, primary_key=True)
    name: str = Column(String, nullable=False)

    albums = relationship('Album', back_populates='artist')
    songs = relationship('Song', back_populates='artist')


@reg.mapped_as_dataclass
class Albums:
    __tablename__ = 'albums'

    id: int = Column(Integer, primary_key=True)
    name: str = Column(String, nullable=False)

    artist_id = Column(Integer, ForeignKey('artists.id'), nullable=False)
    artist = relationship('Artist', back_populates='albums')

    lyrics: str = Column(Text, nullable=True)


@reg.mapped_as_dataclass
class Songs:
    __tablename__ = 'songs'

    id: int = Column(Integer, primary_key=True)
    name: str = Column(String, nullable=False)

    artist_id = Column(Integer, ForeignKey('artists.id'), nullable=False)
    artist = relationship('Artist', back_populates='songs')

    lyrics: str = Column(Text, nullable=True)





