{{
  config({    
    "materialized": "table",
    "alias": "aa",
    "database": "var("hello")",
    "schema": "aa"
  })
}}

WITH order_tracking_bigquery AS (

  SELECT * 
  
  FROM {{ source('prophecy_field_jaffle_shop', 'orders') }}

),

ordered_order_tracking AS (

  {#Sorts order tracking records by their ID for easier review and monitoring.#}
  SELECT * 
  
  FROM order_tracking_bigquery AS in0
  
  ORDER BY id ASC

)

SELECT *

FROM ordered_order_tracking
