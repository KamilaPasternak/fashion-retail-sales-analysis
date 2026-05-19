CREATE SCHEMA IF NOT EXISTS staging;

DROP TABLE IF EXISTS staging.products;
DROP TABLE IF EXISTS staging.sales_orders;
DROP TABLE IF EXISTS staging.inventory;

CREATE TABLE staging.products(
	product_id int,
    category text,
    sub_category text,
    base_price numeric,
    launch_date text
    );

CREATE TABLE staging.sales_orders(
	order_id int,
    order_date text,
    customer_id int,
    country text,
    product_id int,
    quantity int,
    unit_price numeric,
    discount_pct text,
    status text
    );

CREATE TABLE staging.inventory(
	product_id int,
    warehouse_country text,
    stock_quantity int,
    last_stock_update text
    );