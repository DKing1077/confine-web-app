from app.services.musixmatch import MusixMatch

artist = 'Drake'
track = 'Yebbas Heartbreak'

api = MusixMatch(api_key='a94199af41b2cbfb54d3516a97658701')

# search artist, track
params_search_1 = {
    "q_artist": artist.title(),
    "q_track": track.title(),
    "f_has_lyrics": 1,
    "s_track_rating": "desc",
    "page_size": 10,
    "page": 1,
}

# search artist
params_search_2 = {
    "q_artist": artist.title(),
    "f_has_lyrics": 1,
    "s_track_rating": "desc",
    "page_size": 10,
    "page": 1,
}

# search track
params_search_3 = {
    "q_track": track.title(),
    "f_has_lyrics": 1,
    "s_track_rating": "desc",
    "page_size": 10,
    "page": 1,
}

result = api.track_search(params_search_1)
print(result)



# api_key = 'a94199af41b2cbfb54d3516a97658701'

# # search by artist / track
# track_search_url = 'https://api.musixmatch.com/ws/1.1/track.search'
# params_track_search = {
#     "apikey": api_key,
#     "q_artist": "Drake",
#     "q_track": "God's Plan",
#     "f_has_lyrics": 1,
#     "s_track_rating": "desc",
#     "page_size": 10,
#     "page": 1,
# }
# res_track_search = requests.get(track_search_url, params=params_track_search, timeout=10)
# data_track_search = res_track_search.json()
# print(json.dumps(data_track_search, indent=4))
#
# # search by track
# track_search_url = 'https://api.musixmatch.com/ws/1.1/track.search'
# params_track_search = {
#     "apikey": api_key,
#     "q_track": "God's Plan",
#     "f_has_lyrics": 1,
#     "s_track_rating": "desc",
#     "page_size": 10,
#     "page": 1,
# }
# res_track_search = requests.get(track_search_url, params=params_track_search, timeout=10)
# data_track_search = res_track_search.json()
# print(json.dumps(data_track_search, indent=4))

# serach by artist
# track_search_url = 'https://api.musixmatch.com/ws/1.1/track.search'
# params_track_search = {
#     "apikey": api_key,
#     "q_artist": "Drake",
#     "q_track": "God's Plan",
#     "f_has_lyrics": 1,
#     "s_track_rating": "desc",
#     "page_size": 10,
#     "page": 1,
# }
# res = requests.get(track_search_url, params=params_track_search, timeout=10).json()
# print(json.dumps(res, indent=4))


# 'album_id': 46749165, 'album_name': 'Certified Lover Boy', 'artist_id': 28438104, 'artist_name': 'Drake feat. Travis Scott'

# get lyrics
# track_lyrics_url = 'https://api.musixmatch.com/ws/1.1/track.lyrics.get'
# params_track_lyrics = {
#     "apikey": api_key,
#     "commontrack_id": "80272661",
# }
# res_track_lyrics = requests.get(track_lyrics_url, params=params_track_lyrics, timeout=10)
# res = res_track_lyrics.json()
# print(res)
# tracks = (
#             res.get("message", {})
#             .get("body", {})
#             .get("lyrics", {})
#         )
# print(tracks.get('lyrics_body'))
#
#
# params_search = {
#     "q_artist": artist.title(),
#     "q_track": track.title(),
#     "f_has_lyrics": 1,
#     "s_track_rating": "desc",
#     "page_size": 10,
#     "page": 1,
# }
#
# params_search = {
#     "apikey": self.api_key,
#     "q_artist": artist.title(),
#     "f_has_lyrics": 1,
#     "s_track_rating": "desc",
#     "page_size": 10,
#     "page": 1,
# }
#
# params_search = {
#     "apikey": self.api_key,
#     "q_track": track.title(),
#     "f_has_lyrics": 1,
#     "s_track_rating": "desc",
#     "page_size": 10,
#     "page": 1,
# }









