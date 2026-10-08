select
    customer_id,
    count(*) as order_count,
    sum(amount) as total_sales
from {{ ref('stg_orders') }}
group by customer_id
-- Customer-level sales summary
