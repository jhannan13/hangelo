{{
  config(
    materialized='table'
  )
}}

select
  date_id
  , to_date(cal_date, 'mm/dd/yyyy') as cal_date
  , is_holiday::boolean as is_holiday
  , year_no
  , qtr_no
  , month_desc
  , week_no
  , day_desc

from source_stitch.source_aws.source_s3_date
