from sqlalchemy import Integer, String, ForeignKey, Text, JSON
from sqlalchemy.orm import Mapped, mapped_column, relationship
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import DateTime, func, UniqueConstraint
from datetime import datetime

Base = declarative_base()


class Artists(Base):
    __tablename__ = 'artists'

    # ids
    artist_id: Mapped[int] = mapped_column(Integer, primary_key=True)

    # content
    artist_name: Mapped[str] = mapped_column(String, nullable=False, unique=True)

    # has many tracks, albums, features
    albums: Mapped[list['Albums']] = relationship('Albums', back_populates='artist')
    tracks: Mapped[list['Tracks']] = relationship('Tracks', back_populates='artist')
    features_on: Mapped[list["Features"]] = relationship("Features", back_populates="artist")


class Albums(Base):
    __tablename__ = 'albums'

    # ids
    album_id: Mapped[int] = mapped_column(Integer, primary_key=True)

    # content
    album_name: Mapped[str] = mapped_column(String, nullable=False)

    # belongs to an artist
    artist_id: Mapped[int] = mapped_column(ForeignKey('artists.artist_id'), nullable=False)
    artist: Mapped['Artists'] = relationship('Artists', back_populates='albums')

    # has many tracks
    tracks: Mapped[list['Tracks']] = relationship('Tracks', back_populates='album')

    __table_args__ = (
        UniqueConstraint("artist_id", "album_name"),
    )


class Tracks(Base):
    __tablename__ = 'tracks'

    # ids
    track_id: Mapped[int] = mapped_column(Integer, primary_key=True)

    # content
    track_name: Mapped[str] = mapped_column(String, nullable=False)
    commontrack_id: Mapped[int] = mapped_column(Integer, nullable=False)
    lyrics: Mapped[str] = mapped_column(Text, nullable=False)

    # belongs to artist
    artist_id: Mapped[int] = mapped_column(ForeignKey('artists.artist_id'), nullable=False)
    artist: Mapped['Artists'] = relationship('Artists', back_populates='tracks')

    # can belong to album
    album_id: Mapped[int | None] = mapped_column(ForeignKey("albums.album_id"), nullable=True)
    album: Mapped['Albums | None'] = relationship('Albums', back_populates="tracks")

    # has features
    features: Mapped[list["Features"]] = relationship("Features", back_populates="track")

    __table_args__ = (
        UniqueConstraint("artist_id", "album_id", "track_name"),
    )


class Features(Base):
    __tablename__ = 'features'

    # belongs to a track
    track_id: Mapped[int] = mapped_column(ForeignKey('tracks.track_id'), primary_key=True)
    track: Mapped['Tracks'] = relationship('Tracks', back_populates="features")

    # belongs to an artist
    artist_id: Mapped[int] = mapped_column(ForeignKey('artists.artist_id'), primary_key=True)
    artist: Mapped['Artists'] = relationship('Artists', back_populates="features_on")


class Users(Base):
    __tablename__ = 'users'

    # ids
    user_id: Mapped[int] = mapped_column(Integer, primary_key=True)

    # content
    email: Mapped[str] = mapped_column(String, nullable=False, unique=True)
    password_hash: Mapped[str] = mapped_column(String, nullable=False)


class SearchResults(Base):
    __tablename__ = 'search_results'

    # ids
    search_id: Mapped[int] = mapped_column(Integer, primary_key=True)
    user_id: Mapped[int] = mapped_column(ForeignKey('users.user_id'))

    # content
    search_text: Mapped[str] = mapped_column(Text, nullable=False)
    search_result: Mapped[list] = mapped_column(JSON, nullable=False)

    # # artist* -> not implemented
    # # track* -> not implemented

    # metadata
    created_at: Mapped[datetime] = mapped_column(
        DateTime(timezone=True), server_default=func.now(), nullable=False
    )





