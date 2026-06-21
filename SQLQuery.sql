SELECT title, AVG(salary) AS stipendio_medio
FROM titles
JOIN salaries ON titles.emp_no = salaries.emp_no
GROUP BY title
-- Stipendio medio per ogni titolo/ruolo professionale