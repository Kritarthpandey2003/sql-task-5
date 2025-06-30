# 🧠 SQL Developer Internship — Task 5: SQL Joins

This task demonstrates the use of various SQL **JOIN operations** between `Customers` and `Orders` tables using **MySQL Workbench**.

---

## 📌 Objective

To understand and implement:
- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`
- `FULL OUTER JOIN` (emulated using `UNION`)

---

## 📂 Tables Created

### 🔸 Customers
| Column Name    | Data Type     |
|----------------|---------------|
| CustomerID     | INT (PK)      |
| CustomerName   | VARCHAR(100)  |
| City           | VARCHAR(50)   |

### 🔸 Orders
| Column Name    | Data Type     |
|----------------|---------------|
| OrderID        | INT (PK)      |
| CustomerID     | INT (FK)      |
| OrderDate      | DATE          |
| Amount         | DECIMAL(10,2) |

---

## 📊 Join Query Examples

### 1️⃣ INNER JOIN
```sql
SELECT Customers.CustomerName, Orders.OrderDate, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

