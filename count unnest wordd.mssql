WITH words AS (
  SELECT word
  FROM your_table,
  UNNEST(split(your_column, ' ')) AS t(word)
)
SELECT word, COUNT(*) as count
FROM words
GROUP BY word
ORDER BY count DESC;
