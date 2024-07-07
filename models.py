from textblob import TextBlob
from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer


def sentiment_analysis(df):
    sentiment_scores_tb = []
    sentiment_scores_vadr = []

    for song in df:
        lyrics = song.lyrics

        analysis = TextBlob(lyrics)
        sentiment_value = analysis.sentiment.polarity
        sentiment_percentage = (sentiment_value + 1) * 50
        sentiment_scores_tb.append(sentiment_percentage)

        analyzer = SentimentIntensityAnalyzer()
        sentiment = analyzer.polarity_scores(lyrics)
        sentiment_percentage = (sentiment['compound'] + 1) * 50
        sentiment_scores_vadr.append(sentiment_percentage)

    print(sentiment_scores_tb)
    print(sentiment_scores_vadr)

