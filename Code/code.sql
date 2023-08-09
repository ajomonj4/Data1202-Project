-- View the facts and dimensions tables
SELECT * FROM credit_card.cc_info_dimensions;
SELECT * FROM credit_card.cc_info_facts;


-- Rename a column in cc_info_facts table
ALTER TABLE cc_info_facts
RENAME COLUMN ï»¿credit_card TO credit_card;

-- Rename a column in cc_info_dimensions table
ALTER TABLE cc_info_dimensions
RENAME COLUMN ï»¿credit_card TO credit_card;


-- Create a view which combines the columns from both the tables with 'credit_card' column as unique common key
CREATE VIEW combined_cc_info AS
SELECT f.credit_card, f.credit_card_limit, d.city, d.state, d.zipcode
FROM cc_info_facts f
INNER JOIN cc_info_dimensions d ON f.credit_card = d.credit_card;


-- View the created view
SELECT * FROM combined_cc_info;


-- Qn. Display the average credit limit for each State in the database.
SELECT state, AVG(credit_card_limit) AS average_credit_limit
FROM combined_cc_info
GROUP BY state;

