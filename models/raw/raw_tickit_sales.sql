{{
  config(
    materialized='table'
  )
}}

select
  event_id
  , list_id
  , buyer_id
  , seller_id
  , sales_id
  , date_id
  , to_timestamp(sale_time, 'mm/dd/yyyy hh12:mi') as sale_dt
  , qty_sold
  , price_paid
  , commission

from source_stitch.source_aws.tickit_sales
