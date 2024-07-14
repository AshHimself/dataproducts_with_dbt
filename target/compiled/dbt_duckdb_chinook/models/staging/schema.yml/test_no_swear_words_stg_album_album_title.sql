

WITH swear_words AS (
    SELECT 'Tuna' AS word UNION ALL
    SELECT 'Shit' UNION ALL
    SELECT 'Homer'
    -- Add more swear words as needed
)

SELECT
    *
FROM "chinook"."main"."stg_album"
WHERE EXISTS (
    SELECT 1
    FROM swear_words
    WHERE LOWER("chinook"."main"."stg_album".album_title) LIKE '%' || word || '%'
)

