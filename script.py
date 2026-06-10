from app.services.musixmatch import MusixMatch

MUSIXMATCH_APIKEY = 'a94199af41b2cbfb54d3516a97658701'
api_client = MusixMatch(api_key=MUSIXMATCH_APIKEY)

classes = api_client.track_search(artist='Drake', track=None)




