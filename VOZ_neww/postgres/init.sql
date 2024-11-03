CREATE TABLE IF NOT EXISTS voz_messages (
    id TEXT PRIMARY KEY,
    thread_title TEXT,
    thread_date TIMESTAMP,
    latest_poster TEXT,
    latest_post_time TIMESTAMP,
    message_content TEXT,
    thread_url TEXT,
    sentiment_score FLOAT,
    sentiment_subjectivity FLOAT,
    analyzed_at TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_analyzed_at ON voz_messages(analyzed_at);
CREATE INDEX IF NOT EXISTS idx_sentiment_score ON voz_messages(sentiment_score);