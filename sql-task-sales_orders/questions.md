# SQL Practice: Sales Orders

This practice set focuses on `SELECT` queries using ANSI SQL syntax compatible with both SQLite and PostgreSQL.

## Database Setup

### Option 1: PostgreSQL with SQLTools in VS Code
If you have PostgreSQL installed and use the **SQLTools** extension in VS Code:
1. Connect to your practice database (default `postgres` database for Kavana) in the SQLTools sidebar.
2. Create a new SQL file (e.g., `practice.sql`) in VS Code for practicing.
3. Copy the SQL content from [`schema.sql`](schema.sql), paste it into your SQL file, and execute it to create the `sales_orders` table.
4. Copy the SQL content from [`seed_data.sql`](seed_data.sql), paste it into your SQL file, and execute it to insert the 50 records.
5. Start writing and running your practice queries in that SQL file.

### Option 2: SQLite CLI (Terminal Setup)
If you prefer working with a lightweight local database:

1. Install SQLite CLI via PowerShell (installs only if not already installed):
```powershell
if (-not (Get-Command sqlite3 -ErrorAction SilentlyContinue)) { winget install SQLite.SQLite }
```
*(If newly installed, restart your terminal so `sqlite3` is recognized on your PATH).*

2. Create and seed the database:
```bash
sqlite3 sales.db ".read schema.sql" ".read seed_data.sql"
```

3. Open the interactive SQLite shell to start practicing:
```bash
sqlite3 sales.db
```

Table columns:
- `order_id` (INT, Primary Key)
- `customer_name` (VARCHAR)
- `city` (VARCHAR, Nullable)
- `category` (VARCHAR)
- `amount` (DECIMAL)
- `order_date` (DATE, Format `YYYY-MM-DD`)

---

## Practice Questions

### 1. Basic Filtering
Retrieve all records for orders in the 'Electronics' category.

<details>
<summary>Click to view expected result (11 rows)</summary>

| order_id | customer_name | city | category | amount | order_date |
| --- | --- | --- | --- | --- | --- |
| 1 | Alice Smith | New York | Electronics | 850.00 | 2024-01-15 |
| 5 | Emma Watson | NULL | Electronics | 1150.00 | 2024-01-28 |
| 10 | James Wilson | Los Angeles | Electronics | 920.00 | 2024-02-23 |
| 16 | Paul Anderson | New York | Electronics | 1420.00 | 2024-04-02 |
| 20 | Tom Hardy | Seattle | Electronics | 450.00 | 2024-04-25 |
| 25 | Yvonne Strahovski | Chicago | Electronics | 980.00 | 2024-05-27 |
| 29 | Chris Evans | Houston | Electronics | 1290.00 | 2024-06-21 |
| 35 | Ian Malcolm | Seattle | Electronics | 780.00 | 2024-08-02 |
| 41 | Amanda Lee | Austin | Electronics | 1550.00 | 2024-09-12 |
| 46 | Adam Clark | NULL | Electronics | 710.00 | 2024-10-17 |
| 49 | Alan Walker | Austin | Electronics | 340.00 | 2024-11-09 |

</details>

### 2. Comparison Operators & Projection
Find the `order_id`, `customer_name`, and `amount` for all orders where the purchase amount is strictly greater than 500.00.

<details>
<summary>Click to view expected result (11 rows)</summary>

| order_id | customer_name | amount |
| --- | --- | --- |
| 1 | Alice Smith | 850.00 |
| 5 | Emma Watson | 1150.00 |
| 10 | James Wilson | 920.00 |
| 16 | Paul Anderson | 1420.00 |
| 25 | Yvonne Strahovski | 980.00 |
| 29 | Chris Evans | 1290.00 |
| 35 | Ian Malcolm | 780.00 |
| 41 | Amanda Lee | 1550.00 |
| 46 | Adam Clark | 710.00 |
| 47 | Bruce Wayne | 650.00 |
| 50 | Walter White | 520.00 |

</details>

### 3. Date Range with `BETWEEN`
Retrieve all orders placed between February 1, 2024 and March 31, 2024 (inclusive).

<details>
<summary>Click to view expected result (10 rows)</summary>

| order_id | customer_name | city | category | amount | order_date |
| --- | --- | --- | --- | --- | --- |
| 6 | Frank Thomas | Seattle | Groceries | 65.50 | 2024-02-02 |
| 7 | Grace Hopper | Miami | Books | 48.00 | 2024-02-05 |
| 8 | Henry Ford | Chicago | Toys | 85.00 | 2024-02-12 |
| 9 | Ivy Chen | New York | Clothing | 75.00 | 2024-02-17 |
| 10 | James Wilson | Los Angeles | Electronics | 920.00 | 2024-02-23 |
| 11 | Karen White | Austin | Groceries | 110.00 | 2024-03-01 |
| 12 | Liam Jackson | Houston | Home & Kitchen | 310.00 | 2024-03-08 |
| 13 | Mia Robinson | Seattle | Books | 22.50 | 2024-03-14 |
| 14 | Noah Martinez | NULL | Toys | 45.00 | 2024-03-19 |
| 15 | Olivia Harris | Miami | Clothing | 180.00 | 2024-03-24 |

</details>

### 4. Membership Testing with `IN`
Find all orders where the category is either 'Books', 'Toys', or 'Groceries'.

<details>
<summary>Click to view expected result (20 rows)</summary>

| order_id | customer_name | city | category | amount | order_date |
| --- | --- | --- | --- | --- | --- |
| 2 | Bob Miller | Chicago | Books | 35.00 | 2024-01-18 |
| 6 | Frank Thomas | Seattle | Groceries | 65.50 | 2024-02-02 |
| 7 | Grace Hopper | Miami | Books | 48.00 | 2024-02-05 |
| 8 | Henry Ford | Chicago | Toys | 85.00 | 2024-02-12 |
| 11 | Karen White | Austin | Groceries | 110.00 | 2024-03-01 |
| 13 | Mia Robinson | Seattle | Books | 22.50 | 2024-03-14 |
| 14 | Noah Martinez | NULL | Toys | 45.00 | 2024-03-19 |
| 17 | Quinn Taylor | Chicago | Groceries | 95.00 | 2024-04-07 |
| 21 | Uma Thurman | Houston | Books | 55.00 | 2024-05-03 |
| 22 | Victor Vance | Miami | Toys | 130.00 | 2024-05-09 |
| 26 | Zachary Levi | Austin | Groceries | 40.00 | 2024-06-02 |
| 27 | Aaron Taylor | Los Angeles | Books | 32.00 | 2024-06-08 |
| 31 | Eric Harrison | New York | Toys | 95.00 | 2024-07-04 |
| 32 | Fiona Gallagher | Chicago | Groceries | 135.00 | 2024-07-11 |
| 33 | Gary White | Austin | Books | 60.00 | 2024-07-18 |
| 37 | Kevin Bacon | NULL | Groceries | 50.00 | 2024-08-16 |
| 38 | Laura Bailey | Miami | Books | 42.00 | 2024-08-22 |
| 40 | Nathan Drake | Chicago | Toys | 110.00 | 2024-09-05 |
| 44 | Steve Rogers | Houston | Books | 70.00 | 2024-10-03 |
| 45 | Tina Fey | Miami | Groceries | 80.00 | 2024-10-10 |

</details>

### 5. Compound Logic with `AND`
Find all 'Clothing' orders that have an amount strictly less than 100.00.

<details>
<summary>Click to view expected result (5 rows)</summary>

| order_id | customer_name | city | category | amount | order_date |
| --- | --- | --- | --- | --- | --- |
| 9 | Ivy Chen | New York | Clothing | 75.00 | 2024-02-17 |
| 19 | Sarah Connor | Los Angeles | Clothing | 65.00 | 2024-04-18 |
| 23 | Wendy Adams | NULL | Clothing | 90.00 | 2024-05-15 |
| 34 | Hannah Abbott | Los Angeles | Clothing | 85.00 | 2024-07-25 |
| 43 | Rachel Green | Seattle | Clothing | 95.00 | 2024-09-26 |

</details>

### 6. Mixed Conditions with `OR` and Parentheses
Find all orders that either belong to 'Electronics' with an amount of at least 800.00, or were placed in the city 'Chicago'.

<details>
<summary>Click to view expected result (13 rows)</summary>

| order_id | customer_name | city | category | amount | order_date |
| --- | --- | --- | --- | --- | --- |
| 1 | Alice Smith | New York | Electronics | 850.00 | 2024-01-15 |
| 2 | Bob Miller | Chicago | Books | 35.00 | 2024-01-18 |
| 5 | Emma Watson | NULL | Electronics | 1150.00 | 2024-01-28 |
| 8 | Henry Ford | Chicago | Toys | 85.00 | 2024-02-12 |
| 10 | James Wilson | Los Angeles | Electronics | 920.00 | 2024-02-23 |
| 16 | Paul Anderson | New York | Electronics | 1420.00 | 2024-04-02 |
| 17 | Quinn Taylor | Chicago | Groceries | 95.00 | 2024-04-07 |
| 25 | Yvonne Strahovski | Chicago | Electronics | 980.00 | 2024-05-27 |
| 29 | Chris Evans | Houston | Electronics | 1290.00 | 2024-06-21 |
| 32 | Fiona Gallagher | Chicago | Groceries | 135.00 | 2024-07-11 |
| 40 | Nathan Drake | Chicago | Toys | 110.00 | 2024-09-05 |
| 41 | Amanda Lee | Austin | Electronics | 1550.00 | 2024-09-12 |
| 48 | Arthur Morgan | Chicago | Clothing | 115.00 | 2024-11-02 |

</details>

### 7. Negation and Exclusion
Retrieve all orders where the category is NOT 'Groceries' and the city is NOT 'Seattle'.

<details>
<summary>Click to view expected result (33 rows)</summary>

> **Note**: Records with NULL cities evaluate to UNKNOWN and are excluded due to SQL 3-valued logic.

| order_id | customer_name | city | category | amount | order_date |
| --- | --- | --- | --- | --- | --- |
| 1 | Alice Smith | New York | Electronics | 850.00 | 2024-01-15 |
| 2 | Bob Miller | Chicago | Books | 35.00 | 2024-01-18 |
| 3 | Charlie Davis | Los Angeles | Clothing | 120.00 | 2024-01-22 |
| 4 | David Gibson | Houston | Home & Kitchen | 240.00 | 2024-01-25 |
| 7 | Grace Hopper | Miami | Books | 48.00 | 2024-02-05 |
| 8 | Henry Ford | Chicago | Toys | 85.00 | 2024-02-12 |
| 9 | Ivy Chen | New York | Clothing | 75.00 | 2024-02-17 |
| 10 | James Wilson | Los Angeles | Electronics | 920.00 | 2024-02-23 |
| 12 | Liam Jackson | Houston | Home & Kitchen | 310.00 | 2024-03-08 |
| 15 | Olivia Harris | Miami | Clothing | 180.00 | 2024-03-24 |
| 16 | Paul Anderson | New York | Electronics | 1420.00 | 2024-04-02 |
| 18 | Robert Johnson | Austin | Home & Kitchen | 155.00 | 2024-04-12 |
| 19 | Sarah Connor | Los Angeles | Clothing | 65.00 | 2024-04-18 |
| 21 | Uma Thurman | Houston | Books | 55.00 | 2024-05-03 |
| 22 | Victor Vance | Miami | Toys | 130.00 | 2024-05-09 |
| 24 | Xavier Bell | New York | Home & Kitchen | 420.00 | 2024-05-20 |
| 25 | Yvonne Strahovski | Chicago | Electronics | 980.00 | 2024-05-27 |
| 27 | Aaron Taylor | Los Angeles | Books | 32.00 | 2024-06-08 |
| 29 | Chris Evans | Houston | Electronics | 1290.00 | 2024-06-21 |
| 30 | Diana Prince | Miami | Home & Kitchen | 175.00 | 2024-06-28 |
| 31 | Eric Harrison | New York | Toys | 95.00 | 2024-07-04 |
| 33 | Gary White | Austin | Books | 60.00 | 2024-07-18 |
| 34 | Hannah Abbott | Los Angeles | Clothing | 85.00 | 2024-07-25 |
| 36 | Julia Roberts | Houston | Home & Kitchen | 380.00 | 2024-08-09 |
| 38 | Laura Bailey | Miami | Books | 42.00 | 2024-08-22 |
| 39 | Michael Scott | New York | Clothing | 140.00 | 2024-08-29 |
| 40 | Nathan Drake | Chicago | Toys | 110.00 | 2024-09-05 |
| 41 | Amanda Lee | Austin | Electronics | 1550.00 | 2024-09-12 |
| 42 | Peter Parker | Los Angeles | Home & Kitchen | 290.00 | 2024-09-19 |
| 44 | Steve Rogers | Houston | Books | 70.00 | 2024-10-03 |
| 47 | Bruce Wayne | New York | Home & Kitchen | 650.00 | 2024-10-24 |
| 48 | Arthur Morgan | Chicago | Clothing | 115.00 | 2024-11-02 |
| 49 | Alan Walker | Austin | Electronics | 340.00 | 2024-11-09 |

</details>

### 8. Null Checking with `IS NULL`
Find all orders where the customer's city is missing (NULL).

<details>
<summary>Click to view expected result (5 rows)</summary>

| order_id | customer_name | city | category | amount | order_date |
| --- | --- | --- | --- | --- | --- |
| 5 | Emma Watson | NULL | Electronics | 1150.00 | 2024-01-28 |
| 14 | Noah Martinez | NULL | Toys | 45.00 | 2024-03-19 |
| 23 | Wendy Adams | NULL | Clothing | 90.00 | 2024-05-15 |
| 37 | Kevin Bacon | NULL | Groceries | 50.00 | 2024-08-16 |
| 46 | Adam Clark | NULL | Electronics | 710.00 | 2024-10-17 |

</details>

### 9. Deduplication and Non-Nulls
List all unique non-null cities from the table, ordered alphabetically.

<details>
<summary>Click to view expected result (7 rows)</summary>

| city |
| --- |
| Austin |
| Chicago |
| Houston |
| Los Angeles |
| Miami |
| New York |
| Seattle |

</details>

### 10. Pattern Matching - Prefix Wildcard
Find all orders placed by customers whose names start with the letter 'A'.

<details>
<summary>Click to view expected result (6 rows)</summary>

| order_id | customer_name | city | category | amount | order_date |
| --- | --- | --- | --- | --- | --- |
| 1 | Alice Smith | New York | Electronics | 850.00 | 2024-01-15 |
| 27 | Aaron Taylor | Los Angeles | Books | 32.00 | 2024-06-08 |
| 41 | Amanda Lee | Austin | Electronics | 1550.00 | 2024-09-12 |
| 46 | Adam Clark | NULL | Electronics | 710.00 | 2024-10-17 |
| 48 | Arthur Morgan | Chicago | Clothing | 115.00 | 2024-11-02 |
| 49 | Alan Walker | Austin | Electronics | 340.00 | 2024-11-09 |

</details>

### 11. Pattern Matching - Suffix Wildcard
Find all orders placed by customers whose names end with 'son'.

<details>
<summary>Click to view expected result (8 rows)</summary>

| order_id | customer_name | city | category | amount | order_date |
| --- | --- | --- | --- | --- | --- |
| 4 | David Gibson | Houston | Home & Kitchen | 240.00 | 2024-01-25 |
| 5 | Emma Watson | NULL | Electronics | 1150.00 | 2024-01-28 |
| 10 | James Wilson | Los Angeles | Electronics | 920.00 | 2024-02-23 |
| 12 | Liam Jackson | Houston | Home & Kitchen | 310.00 | 2024-03-08 |
| 13 | Mia Robinson | Seattle | Books | 22.50 | 2024-03-14 |
| 16 | Paul Anderson | New York | Electronics | 1420.00 | 2024-04-02 |
| 18 | Robert Johnson | Austin | Home & Kitchen | 155.00 | 2024-04-12 |
| 31 | Eric Harrison | New York | Toys | 95.00 | 2024-07-04 |

</details>

### 12. Single-Character Wildcard
Find all customer names where the second letter of the name is 'a'.

<details>
<summary>Click to view expected result (15 rows)</summary>

| customer_name |
| --- |
| David Gibson |
| James Wilson |
| Karen White |
| Paul Anderson |
| Sarah Connor |
| Xavier Bell |
| Zachary Levi |
| Aaron Taylor |
| Gary White |
| Hannah Abbott |
| Ian Malcolm |
| Laura Bailey |
| Nathan Drake |
| Rachel Green |
| Walter White |

</details>

### 13. Multi-Column Sorting
List all orders sorted alphabetically by `category` ascending, and within each category, by `amount` descending.

<details>
<summary>Click to view expected result (50 rows)</summary>

| order_id | customer_name | city | category | amount | order_date |
| --- | --- | --- | --- | --- | --- |
| 44 | Steve Rogers | Houston | Books | 70.00 | 2024-10-03 |
| 33 | Gary White | Austin | Books | 60.00 | 2024-07-18 |
| 21 | Uma Thurman | Houston | Books | 55.00 | 2024-05-03 |
| 7 | Grace Hopper | Miami | Books | 48.00 | 2024-02-05 |
| 38 | Laura Bailey | Miami | Books | 42.00 | 2024-08-22 |
| 2 | Bob Miller | Chicago | Books | 35.00 | 2024-01-18 |
| 27 | Aaron Taylor | Los Angeles | Books | 32.00 | 2024-06-08 |
| 13 | Mia Robinson | Seattle | Books | 22.50 | 2024-03-14 |
| 28 | Bella Swan | Seattle | Clothing | 210.00 | 2024-06-14 |
| 15 | Olivia Harris | Miami | Clothing | 180.00 | 2024-03-24 |
| 39 | Michael Scott | New York | Clothing | 140.00 | 2024-08-29 |
| 3 | Charlie Davis | Los Angeles | Clothing | 120.00 | 2024-01-22 |
| 48 | Arthur Morgan | Chicago | Clothing | 115.00 | 2024-11-02 |
| 43 | Rachel Green | Seattle | Clothing | 95.00 | 2024-09-26 |
| 23 | Wendy Adams | NULL | Clothing | 90.00 | 2024-05-15 |
| 34 | Hannah Abbott | Los Angeles | Clothing | 85.00 | 2024-07-25 |
| 9 | Ivy Chen | New York | Clothing | 75.00 | 2024-02-17 |
| 19 | Sarah Connor | Los Angeles | Clothing | 65.00 | 2024-04-18 |
| 41 | Amanda Lee | Austin | Electronics | 1550.00 | 2024-09-12 |
| 16 | Paul Anderson | New York | Electronics | 1420.00 | 2024-04-02 |
| 29 | Chris Evans | Houston | Electronics | 1290.00 | 2024-06-21 |
| 5 | Emma Watson | NULL | Electronics | 1150.00 | 2024-01-28 |
| 25 | Yvonne Strahovski | Chicago | Electronics | 980.00 | 2024-05-27 |
| 10 | James Wilson | Los Angeles | Electronics | 920.00 | 2024-02-23 |
| 1 | Alice Smith | New York | Electronics | 850.00 | 2024-01-15 |
| 35 | Ian Malcolm | Seattle | Electronics | 780.00 | 2024-08-02 |
| 46 | Adam Clark | NULL | Electronics | 710.00 | 2024-10-17 |
| 20 | Tom Hardy | Seattle | Electronics | 450.00 | 2024-04-25 |
| 49 | Alan Walker | Austin | Electronics | 340.00 | 2024-11-09 |
| 32 | Fiona Gallagher | Chicago | Groceries | 135.00 | 2024-07-11 |
| 11 | Karen White | Austin | Groceries | 110.00 | 2024-03-01 |
| 17 | Quinn Taylor | Chicago | Groceries | 95.00 | 2024-04-07 |
| 45 | Tina Fey | Miami | Groceries | 80.00 | 2024-10-10 |
| 6 | Frank Thomas | Seattle | Groceries | 65.50 | 2024-02-02 |
| 37 | Kevin Bacon | NULL | Groceries | 50.00 | 2024-08-16 |
| 26 | Zachary Levi | Austin | Groceries | 40.00 | 2024-06-02 |
| 47 | Bruce Wayne | New York | Home & Kitchen | 650.00 | 2024-10-24 |
| 50 | Walter White | Seattle | Home & Kitchen | 520.00 | 2024-11-16 |
| 24 | Xavier Bell | New York | Home & Kitchen | 420.00 | 2024-05-20 |
| 36 | Julia Roberts | Houston | Home & Kitchen | 380.00 | 2024-08-09 |
| 12 | Liam Jackson | Houston | Home & Kitchen | 310.00 | 2024-03-08 |
| 42 | Peter Parker | Los Angeles | Home & Kitchen | 290.00 | 2024-09-19 |
| 4 | David Gibson | Houston | Home & Kitchen | 240.00 | 2024-01-25 |
| 30 | Diana Prince | Miami | Home & Kitchen | 175.00 | 2024-06-28 |
| 18 | Robert Johnson | Austin | Home & Kitchen | 155.00 | 2024-04-12 |
| 22 | Victor Vance | Miami | Toys | 130.00 | 2024-05-09 |
| 40 | Nathan Drake | Chicago | Toys | 110.00 | 2024-09-05 |
| 31 | Eric Harrison | New York | Toys | 95.00 | 2024-07-04 |
| 8 | Henry Ford | Chicago | Toys | 85.00 | 2024-02-12 |
| 14 | Noah Martinez | NULL | Toys | 45.00 | 2024-03-19 |

</details>

### 14. Top-N Records with `LIMIT`
Retrieve the 5 most expensive orders in the database.

<details>
<summary>Click to view expected result (5 rows)</summary>

| order_id | customer_name | category | amount |
| --- | --- | --- | --- |
| 41 | Amanda Lee | Electronics | 1550.00 |
| 16 | Paul Anderson | Electronics | 1420.00 |
| 29 | Chris Evans | Electronics | 1290.00 |
| 5 | Emma Watson | Electronics | 1150.00 |
| 25 | Yvonne Strahovski | Electronics | 980.00 |

</details>

### 15. Pagination with `LIMIT` and `OFFSET`
Retrieve 5 orders starting after the top 5 most expensive orders (ranks 6 through 10).

<details>
<summary>Click to view expected result (5 rows)</summary>

| order_id | customer_name | category | amount |
| --- | --- | --- | --- |
| 10 | James Wilson | Electronics | 920.00 |
| 1 | Alice Smith | Electronics | 850.00 |
| 35 | Ian Malcolm | Electronics | 780.00 |
| 46 | Adam Clark | Electronics | 710.00 |
| 47 | Bruce Wayne | Home & Kitchen | 650.00 |

</details>

### 16. Summary Statistics
Calculate the total number of orders, the overall revenue, and the rounded average order amount (rounded to 2 decimal places).

<details>
<summary>Click to view expected result (1 row)</summary>

| total_orders | total_revenue | average_amount |
| --- | --- | --- |
| 50 | 16160.00 | 323.20 |

</details>

### 17. Null Handling in Aggregates
Compare the total number of records in the table with the number of records that have a known city value.

<details>
<summary>Click to view expected result (1 row)</summary>

| all_records | known_city_records |
| --- | --- |
| 50 | 45 |

</details>

### 18. Group Aggregation
For each category, find the total number of orders and total revenue. Display the result ordered by revenue from highest to lowest.

<details>
<summary>Click to view expected result (6 rows)</summary>

| category | order_count | total_revenue |
| --- | --- | --- |
| Electronics | 11 | 10440.00 |
| Home & Kitchen | 9 | 3140.00 |
| Clothing | 10 | 1175.00 |
| Groceries | 7 | 575.50 |
| Toys | 5 | 465.00 |
| Books | 8 | 364.50 |

</details>

### 19. Filtered Groups with `HAVING`
Find categories that have at least 8 orders and an average order amount greater than 200.00.

<details>
<summary>Click to view expected result (2 rows)</summary>

| category | order_count | avg_amount |
| --- | --- | --- |
| Electronics | 11 | 949.09 |
| Home & Kitchen | 9 | 348.89 |

</details>

### 20. Comprehensive Clause Pipeline
Considering only orders placed on or before June 30, 2024 (`order_date <= '2024-06-30'`) where the city is not null: find cities where total customer spending exceeded 600.00, sorted from highest to lowest spend.

<details>
<summary>Click to view expected result (5 rows)</summary>

| city | h1_total_spend |
| --- | --- |
| New York | 2765.00 |
| Houston | 1895.00 |
| Chicago | 1195.00 |
| Los Angeles | 1137.00 |
| Seattle | 748.00 |

</details>
