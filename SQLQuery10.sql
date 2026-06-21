SELECT YEAR(hire_date) AS anno, COUNT(emp_no) AS numero_assunzioni FROM employees GROUP BY YEAR(hire_date)
-- Numero di dipendenti assunti per ogni anno (per vedere i trend di assunzione nel tempo)