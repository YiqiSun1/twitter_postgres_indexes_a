/*
 * Change settings
 */

SET max_parallel_maintenance_workers TO 4;
SET maintenance_work_mem TO '1GB';
ALTER TABLE tweet_tags SET (parallel_workers = 4);
ALTER TABLE tweets SET (parallel_workers = 4);


-- CREATE INDEX ON tweet_tags(tag text_pattern_ops, id_tweets);
-- CREATE INDEX ON tweets(lang, id_tweets);
-- CREATE INDEX ON tweets(id_tweets, lang);
-- CREATE INDEX ON tweets USING gin(to_tsvector('english', text));
-- CREATE INDEX ix on tweet_tags(id_tweets, tag)

