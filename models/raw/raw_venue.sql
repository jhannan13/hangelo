{{
  config(
    materialized='table'
  )
}}

select
  venue_id
  , venue_name
  , venue_city
  , venue_state_code
  , venue_seats::number(38,0) as venue_seats

from source_stitch.source_aws.source_s3_venue
