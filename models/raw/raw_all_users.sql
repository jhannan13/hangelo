{{
  config(
    materialized='table'
  )
}}

select
  user_id
  , user_name
  , first_name
  , last_name
  , city
  , state_code
  , email
  , phone
  , case when like_broadway = '' then NULL else like_broadway::boolean end as like_broadway
  , case when like_classical = '' then NULL else like_classical::boolean end as like_classical
  , case when like_concerts = '' then NULL else like_concerts::boolean end as like_concerts
  , case when like_jazz = '' then NULL else like_jazz::boolean end as like_jazz
  , case when like_musicals = '' then NULL else like_musicals::boolean end as like_musicals
  , case when like_opera = '' then NULL else like_opera::boolean end as like_opera
  , case when like_rock = '' then NULL else like_rock::boolean end as like_rock
  , case when like_sports = '' then NULL else like_sports::boolean end as like_sports
  , case when like_vegas = '' then NULL else  like_vegas::boolean end as like_vegas

from source_stitch.source_aws.source_s3_all_users
