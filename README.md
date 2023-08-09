# Data1202-Project


View the facts and dimensions tables
```sql
SELECT * FROM credit_card.cc_info_dimensions;
SELECT * FROM credit_card.cc_info_facts;
```

# CLEANING THE DATA
Rename a column in cc_info_facts table
```sql
ALTER TABLE cc_info_facts
RENAME COLUMN ï»¿credit_card TO credit_card;
```



Rename a column in cc_info_dimensions table
```sql
ALTER TABLE cc_info_dimensions
RENAME COLUMN ï»¿credit_card TO credit_card;
```


# DATA TRANSFORMATIONS
Create a view which combines the columns from both the tables with 'credit_card' column as unique common key
```sql
CREATE VIEW combined_cc_info AS
SELECT f.credit_card, f.credit_card_limit, d.city, d.state, d.zipcode
FROM cc_info_facts f
INNER JOIN cc_info_dimensions d ON f.credit_card = d.credit_card;
```


View the created view
```sql
SELECT * FROM combined_cc_info;
```

