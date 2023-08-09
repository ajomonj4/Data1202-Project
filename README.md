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


