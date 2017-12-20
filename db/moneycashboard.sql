DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS vendors;

CREATE TABLE categories(
  id SERIAL4 PRIMARY KEY,
  category_name VARCHAR(255)
);

CREATE TABLE vendors(
  id SERIAL4 PRIMARY KEY,
  vendor_name VARCHAR(255)
);

CREATE TABLE transactions(
  id SERIAL4 PRIMARY KEY,
  vendor_id INT4 REFERENCES vendors(id),
  amount INT4,
  category_id INT4 REFERENCES categories(id)
);

CREATE TABLE wallets(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  budget DECIMAL
)
