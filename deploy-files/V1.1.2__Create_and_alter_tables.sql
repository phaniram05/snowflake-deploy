ALTER TABLE emp.hrdata.employees_new ADD COLUMN emp_status VARCHAR(10);

CREATE TABLE IF NOT EXISTS hrdata.countries(
    country_id CHAR(2) NOT NULL,
    country_name VARCHAR(40),
    region_id NUMBER,
    PRIMARY KEY country_id
);

CREATE TABLE hrdata.regions(
    region_id NUMBER NOT NULL,
    region_name VARCHAR(25),
    PRIMARY KEY (region_id)
);

UPDATE hrdata.employees_new SET emp_status = 'Active';

CREATE VIEW hrdata.v_employees AS SELECT * FROM hrdata.employees_new;