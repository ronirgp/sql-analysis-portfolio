# 📊 SQL Practice Portfolio
Current Progress

✓ 60 SQL exercises completed
✓ SQLite database created
✓ Git version control used for every exercise

Next Goals

- Reach 100 SQL exercises
- Learn JOINs
- Build real-world SQL projects






[![SQL](https://img.shields.io/badge/SQL-Database-blue.svg)]
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

A collection of SQL practice exercises covering
database fundamentals, filtering, sorting,
aggregation, and query analysis using SQLite.

## 🎯 Portfolio Goal

Master SQL fundamentals through hands-on exercises
and practical examples. Progressing from SELECT,
WHERE, ORDER BY, and GROUP BY to JOINs and
multi-table databases.

## 📚 Project Files

### 1️⃣ **analysis_01.sql** - Aggregation & Grouping
**Skills Covered:**
- `COUNT()` - Count records
- `AVG()` - Calculate averages
- `MAX()` - Find maximum values
- `GROUP BY` - Aggregate by categories

**Example Queries:**
```sql
-- Count employees by department
SELECT department, COUNT(*) as employee_count
FROM employees
GROUP BY department;

-- Average salary by department
SELECT department, AVG(salary) as avg_salary
FROM employees
GROUP BY department;

-- Maximum salary in each department
SELECT department, MAX(salary) as max_salary
FROM employees
GROUP BY department;
```

### 2️⃣ **analysis_02.sql** - Filtering & WHERE Clauses
**Skills Covered:**
- `WHERE` clause - Filter records
- Salary filtering - Numeric comparisons
- Department filtering - Text matching
- Comparison operators: =, >, <, >=, <=, !=

**Example Queries:**
```sql
-- Find all employees with salary > 50000
SELECT name, salary
FROM employees
WHERE salary > 50000;

-- Find employees in specific department
SELECT name, department
FROM employees
WHERE department = 'Sales';

-- Combine filters with AND/OR
SELECT name, salary, department
FROM employees
WHERE salary > 40000 AND department = 'Engineering';
```

## 🗄️ Database Schema

### Table: `employees`

| Column | Type | Description |
|--------|------|-------------|
| `id` | INTEGER | Unique employee identifier (Primary Key) |
| `name` | TEXT | Employee full name |
| `department` | TEXT | Department assignment |
| `salary` | NUMERIC | Annual salary |

## 🛠️ Technologies

- **Database**: SQLite
- **Language**: SQL
- **Tools**: SQL clients (DBeaver, SQLite Browser, Command Line)

## 📋 Prerequisites

### Install SQLite

**Windows:**
```bash
# Download from https://www.sqlite.org/download.html
# Or use package manager
choco install sqlite
```

**macOS:**
```bash
brew install sqlite
```

**Linux:**
```bash
sudo apt-get install sqlite3
```

## 🚀 How to Use

### Option 1: Command Line
```bash
# Open SQLite
sqlite3 employees.db

# Load SQL file
.read analysis_01.sql

# Exit
.quit
```

### Option 2: GUI Tools
- **DBeaver** - Free database IDE
- **SQLite Browser** - Simple visual interface
- **VSCode Extension** - SQL Tools extension


## 💡 What You'll Learn

### SQL Fundamentals
✅ **SELECT Statement**
- Select specific columns
- Select all columns (*)
- Alias columns with AS

✅ **WHERE Clause**
- Filter by numeric values
- Filter by text/strings
- Combine conditions with AND/OR

✅ **Aggregate Functions**
- COUNT() - Number of records
- AVG() - Average values
- MAX() / MIN() - Maximum/minimum values
- SUM() - Total of values

✅ **GROUP BY Clause**
- Group results by category
- Aggregate by groups
- Using HAVING for group filtering

### Real-World Applications
- 📊 Sales analysis by region
- 💼 HR analytics (salary, department)
- 📈 Performance metrics
- 🎯 Business intelligence

## 📊 Example Analyses

### How many employees in each department?
```sql
SELECT department, COUNT(*) as count
FROM employees
GROUP BY department;
```

### What's the average salary by department?
```sql
SELECT department, AVG(salary) as avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;
```

### Who earns more than $50,000?
```sql
SELECT name, salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC;
```

### Which departments have average salary > $45,000?
```sql
SELECT department, AVG(salary) as avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 45000;
```

## 🎓 Learning Progression

**Beginner:**
- ✅ SELECT basics
- ✅ WHERE filtering
- ✅ ORDER BY sorting

**Intermediate:**
- ⬜ Aggregate functions (COUNT, AVG, MAX)
- ⬜ GROUP BY grouping
- ⬜ HAVING filtering on aggregates

**Advanced:**
- ⬜ JOIN operations
- ⬜ Subqueries
- ⬜ Window functions
- ⬜ Indexes and optimization

## 🔧 Practice Exercises

1. **Basic Queries**
   - Get all employees from a specific department
   - Find highest paid employee
   - Count total employees

2. **Aggregation**
   - Average salary company-wide
   - Salary statistics (min, max, avg) per department
   - Employee count by department

3. **Complex Filters**
   - Employees earning between $40k-$60k
   - Departments with more than 5 employees
   - Top 3 highest paid employees

## 📚 SQL Concepts Covered

| Concept | File | Level |
|---------|------|-------|
| SELECT | analysis_01.sql | Beginner |
| FROM | analysis_01.sql | Beginner |
| WHERE | analysis_02.sql | Beginner |
| COUNT | analysis_01.sql | Beginner |
| AVG | analysis_01.sql | Beginner |
| MAX | analysis_01.sql | Beginner |
| GROUP BY | analysis_01.sql | Intermediate |
| ORDER BY | Both | Beginner |
| HAVING | Both | Intermediate |

## 🎯 Next Steps

1. **JOIN Operations**: Connect multiple tables
2. **Subqueries**: Nest queries within queries
3. **Window Functions**: Advanced aggregations
4. **Performance**: Indexes and query optimization
5. **Real Datasets**: Kaggle, SQL challenges

## 📖 Resources

- [SQLite Official Docs](https://www.sqlite.org/docs.html)
- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)
- [Khan Academy - SQL](https://www.khanacademy.org/computing/computer-programming/sql)
- [LeetCode SQL Problems](https://leetcode.com/problems/?topicSlugs=database&difficulty=EASY)
- [HackerRank SQL Practice](https://www.hackerrank.com/domains/sql)

## 📁 Files Included

- `analysis_01.sql` - Aggregation and grouping examples
- `analysis_02.sql` - WHERE clause and filtering examples
- `employees.db` - Sample SQLite database (or create your own)
- `README.md` - This file

## 💡 Pro Tips

- Use meaningful column aliases with `AS`
- Always use `ORDER BY` for consistent results
- Test queries incrementally
- Use `LIMIT` to preview results
- Add comments to explain complex queries
- Practice writing before running

## 👨‍💻 Author

**Ronald Gustavo Pineda**  
📧 [ronald.pneda8@gmail.com](mailto:ronald.pneda8@gmail.com)  
🌐 [GitHub Profile](https://github.com/ronirgp)  
🇸🇻 From El Salvador

**Open to**: Freelance work, collaborations, data analysis projects

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

**Happy learning!** Feel free to open an issue or reach out with questions.
