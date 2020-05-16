{{
  config(
    materialized='table'
  )
}}

select
  date_id
  , event_id
  , seller_id
  , case when list_time = '' then NULL else to_timestamp(list_time, 'mm/dd/yyyy hh12:mi') end as list_time
  , num_tickets
  , price_per_ticket
  , total_price

from source_stitch.source_aws.source_s3_listing
