select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

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


      
    ) dbt_internal_test