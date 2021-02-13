-- Additional queries 
-- Aditional query #1
SELECT e.emp_no,
	e.first_name,
	e.last_name, 
	di.dept_name
--INTO retirement_dept
FROM employees as e
INNER JOIN dept_info as di
ON (e.emp_no = di.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;	


SELECT COUNT(rd.dept_name) as "count", rd.dept_name
--INTO retirement_dept_count
FROM retirement_dept as rd
GROUP BY rd.dept_name
ORDER BY "count";

--Additional query #2
SELECT COUNT(me.title) as "count", me.title
--INTO mentorship_count
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY "count";
