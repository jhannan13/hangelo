{{
  config(
    materialized='table'
  )
}}

select
  cat_id
  , date_id
  , event_id
  , event_name
  , to_timestamp(start_time, 'mm/dd/yyyy hh24:mi') as start_time
  , venue_id

from source_stitch.source_aws.source_s3_all_events
