# from sqlalchemy import select
# from app.models import Artists, Albums, Tracks, Features
# from dataclasses import asdict
# from app import extensions
#
#
# def read_db_test(db_session, artist_input):
#     qry = (
#         select(Tracks)
#         .join(Tracks.artist)
#         .limit(30)
#     )
#     classes = db_session.execute(qry).scalars().all()
#     for obj in classes:
#         print(asdict(obj))
#
# read_db_test(extensions.db_session, "Drake")
#

# search_params = {
#     "page_size": 10, "page": 1,
#     "q_artist": 'Drake',
# }
# search_url = f"https://api.musixmatch.com/ws/1.1/artist.search"
# res = requests.get(search_url, params=search_params, timeout=10).json()
# print(res)
#
# print(res)
#
# # DeepSeek — best price/performance, fast, good for classification tasks
# model_deepsake = "deepseek/deepseek-chat"
#
# # Anthropic Claude Sonnet — strong instruction following, reliable structured output
# model_claude = "anthropic/claude-3.7-sonnet"
#
# # OpenAI GPT — balanced capability, good general-purpose model
# model_gpt = "openai/gpt-4.1"
#
# # Google Gemini Pro — fast, large context window, solid alternative
# model_gemini = "google/gemini-1.5-pro"
#
# choice = ai.parse_search("drake")



