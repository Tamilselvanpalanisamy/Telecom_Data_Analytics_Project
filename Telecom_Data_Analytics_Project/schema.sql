
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    join_date DATE,
    customer_status VARCHAR(20)
);

CREATE TABLE plans (
    plan_id INT PRIMARY KEY,
    plan_name VARCHAR(50),
    monthly_fee DECIMAL(10,2)
);

CREATE TABLE subscriptions (
    subscription_id INT PRIMARY KEY,
    customer_id INT,
    plan_id INT,
    start_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
);

CREATE TABLE usage_records (
    usage_id INT PRIMARY KEY,
    customer_id INT,
    usage_date DATE,
    data_gb DECIMAL(10,2),
    call_minutes INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
