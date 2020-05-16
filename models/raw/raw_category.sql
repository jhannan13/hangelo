{{
  config(
    materialized='table'
  )
}}

select
  cat_id
  , cat_name
  , cat_desc
  , cat_group

from source_stitch.source_aws.source_s3_category
