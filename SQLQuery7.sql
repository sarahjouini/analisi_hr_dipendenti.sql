SELECT TOP 5 emp_no, salary
FROM salaries
WHERE to_date = '9999-01-01'
ORDER BY salary DESC
-- Top 5 dipendenti con lo stipendio più alto attualmente in azienda