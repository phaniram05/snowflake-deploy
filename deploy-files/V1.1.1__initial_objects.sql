-- Make sure the EMP database exists in the snowflake (Mandatory)
CREATE SCHEMA IF NOT EXISTS EMP.hrdata;

-- Create tables
CREATE TABLE IF NOT EXISTS hrdata.employees_new(
    employee_id NUMBER(6),
    first_name VARCHAR(20),
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(25) NOT NULL,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    salary NUMBER(8, 2),
    commission_pct NUMBER(2, 2),
    manager_id NUMBER(6),
    dept_id NUMBER(4),
    PRIMARY KEY(employee_id)
);

CREATE TABLE IF NOT EXISTS hrdata.departments(
    dept_id NUMBER(4),
    dept_name VARCHAR(30) NOT NULL,
    manager_id NUMBER(6),
    location_id NUMBER(4),
    PRIMARY KEY (dept_id)
);

INSERT INTO hrdata.employees_new VALUES
(111, 'Sai Phani Ram', 'Popuri', 'spop@gmail.com', '313.673.1358', TO_DATE('05-APR-1998', 'dd-MON-yyyy'), 'CEO', 99999, NULL, NULL, 90),
(222, 'Madhu', 'Popuri', 'madhu@gmail.com', '543.673.1358', TO_DATE('22-MAR-1997', 'dd-MON-yyyy'), 'CMO', 100000, NULL, NULL, 91),
(333, 'Lakshmi', 'Popuri', 'laxmi@gmail.com', '457.673.1358', TO_DATE('30-SEP-1975', 'dd-MON-yyyy'), 'CFO', 100000, NULL, NULL, 92),
(444, 'Srinivas', 'Popuri', 'srinivas@gmail.com', '123.673.1358', TO_DATE('01-JAN-1972', 'dd-MON-yyyy'), 'CTO', 88888, NULL, NULL, 93),
(555, 'Annapurna', 'Popuri', 'annu@gmail.com', '333.673.1358', TO_DATE('12-APR-1948', 'dd-MON-yyyy'), 'Chair', 55555, NULL, NULL, 94);


INSERT INTO hrdata.departments VALUES
(90, 'Administration', 200, 1000),
(91, 'Marketing', 300, 1100)
(90, 'Finance', 400, 1200)
(90, 'Technology', 500, 1300)
(90, 'Organizer', 600, 1400);