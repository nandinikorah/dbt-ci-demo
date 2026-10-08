select
    cast(order_id as integer) as order_id,
    customer_id,
    cast(amount as numeric(12, 2)) as amount
from {{ ref('orders') }}