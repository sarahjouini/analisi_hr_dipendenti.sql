SELECT dept_name, COUNT(dept_emp.emp_no) AS numero_dipendenti
FROM dept_emp
JOIN departments ON dept_emp.dept_no = departments.dept_no
GROUP BY dept_name
-- Numero di dipendenti che lavorano in ogni dipartimento