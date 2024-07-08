from textblob import TextBlob
import string
from transformers import pipeline


def analyze(df):
    # sentiment_analysis(df)
    text_summary(df)


def sentiment_analysis(df):
    sentiment_scores_tb = []
    for song in df:
        lyrics = song.lyrics.lower()
        lyrics = lyrics.translate(str.maketrans('', '', string.punctuation))

        analysis = TextBlob(lyrics)
        sentiment_value = analysis.sentiment.polarity

        sentiment_percentage = (sentiment_value + 1) * 50
        sentiment_scores_tb.append(sentiment_percentage)
    print(sentiment_scores_tb)


def text_summary(df):
    for song in df:
        lyrics = song.lyrics
        summarizer = pipeline("summarization")

        summary = summarizer(lyrics, max_length=150, min_length=50, do_sample=False)
        print(summary)


