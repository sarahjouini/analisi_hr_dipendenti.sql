select count(emp_no) as dipendenti_senior_engineer
from titles
where title = 'Senior Engineer'
and to_date = '9999-01-01'
--9.650 dipendenti attualmente con il titolo "Senior Engineer"