

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

create table dept_emp (
  emp_no INT NOT NULL,
  dept_no varchar not null,
	from_date date not null,
	to_date date not null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);


create table managers (
   dept_no varchar not null,
   emp_no INT NOT NULL,
   from_date date not null,
	to_date date not null,
   	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
	
	
);