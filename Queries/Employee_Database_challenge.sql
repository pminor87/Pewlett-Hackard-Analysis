-- Deliverable 1

-- Create retirement_titles table for employees born between January 1, 1952 and December 31, 1955. 
SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO
	retirement_titles
FROM
	employees As e
INNER JOIN
	titles AS t
ON
	(e.emp_no = t.emp_no)
WHERE
	(e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY
    emp_no ASC;

-- Create unique_titles table that contains employee number, first and last name, and most recent title.
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no)
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO
	unique_titles
FROM
	retirement_titles AS rt
WHERE
	(rt.to_date = '9999-01-01')
ORDER BY
	emp_no ASC, to_date DESC;

-- Create retiring_titles table that containes the number of titles filled by employees who are retiring.
SELECT COUNT(ut.emp_no),
	ut.title
INTO
	retiring_titles
FROM
	unique_titles AS ut
GROUP BY
	ut.title
ORDER BY
	count(ut.emp_no) DESC;


-- Deliverable 2

--Create mentorship_eligibility table for current employees who were born in 1965.
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO
	mentorship_eligibility
FROM
	employees AS e
INNER JOIN
	dept_emp AS de
ON
	(e.emp_no = de.emp_no)
INNER JOIN
	titles AS t
ON
	(e.emp_no = t.emp_no)
WHERE
	(de.to_date = '9999-01-01')
AND
	(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY
	e.emp_no;