drop database pharmarcy
create database pharmarcy
use pharmarcy


CREATE TABLE allergic_symp_master (
    allergic_id INT NOT NULL,
    allergic_name VARCHAR(50) NULL,
    allergic_descr_major_symp VARCHAR(50) NULL,
    PRIMARY KEY (allergic_id)
);


CREATE TABLE anti_allerg_symp_drug (
    anti_allerg_drug_id INT NOT NULL,
    allergic_id INT NOT NULL,
    any_special_instru VARCHAR(50) NULL,
    PRIMARY KEY (anti_allerg_drug_id, allergic_id)
);



CREATE TABLE anti_allergic_drug (
    anti_allerg_drug_id INT NOT NULL,
    anti_allerg_drug_sh_name VARCHAR(50) NULL,
    anti_allerg_drug_lo_name VARCHAR(50) NULL,
    anti_allerg_drug_general_desc VARCHAR(50) NULL,
    PRIMARY KEY (anti_allerg_drug_id)
);



CREATE TABLE clinical_cond_master (
    clinical_cond_id INT NOT NULL,
    clinical_cond_name VARCHAR(50) NULL,
    clinical_cond_commant VARCHAR(50) NULL,
    condition_id INT NULL,
    PRIMARY KEY (clinical_cond_id)
);



CREATE TABLE condition_master (
    condition_id INT NOT NULL,
    condition_name VARCHAR(10) NULL,
    condition_descr VARCHAR(50) NULL,
    PRIMARY KEY (condition_id)
);



CREATE TABLE department_master (
    dept_no INT NOT NULL,
    dept_name VARCHAR(50) NULL,
    dept_descr VARCHAR(50) NULL,
    hig_desig_id INT NULL,
    PRIMARY KEY (dept_no)
);



CREATE TABLE designation_master (
    desig_id INT NOT NULL,
    desig_name VARCHAR(30) NULL,
    desig_descr VARCHAR(30) NULL,
    PRIMARY KEY (desig_id)
);



CREATE TABLE drug_reaction_agent (
    drug_id INT NULL,
    reaction_agent_id INT NULL,
    reaction_standard_report VARCHAR(50) NULL
);


CREATE TABLE drug_reg_master (
    drug_id INT NOT NULL,
    drug_short_name VARCHAR(50) NULL,
    drug_long_name VARCHAR(50) NULL,
    drug_general_descr VARCHAR(50) NULL,
    drug_chemical_analysis VARCHAR(50) NULL,
    PRIMARY KEY (drug_id)
);



CREATE TABLE drug_trial_master (
    drug_trial_id INT NOT NULL,
    trial_start_date DATETIME NULL,
    trial_complet_date DATETIME NULL,
    purpose_of_trial VARCHAR(50) NULL,
    employee_no INT NULL,
    individual_id INT NULL,
    drug_id INT NULL,
    trial_result_analy_descr VARCHAR(50) NULL,
    trial_status VARCHAR(20) NULL,
    PRIMARY KEY (drug_trial_id)
);



CREATE TABLE drug_usage_cond_master (
    drug_id INT NULL,
    drug_cond_id INT NULL
);



CREATE TABLE employee_master (
    employee_no INT NOT NULL,
    employee_name VARCHAR(50) NULL,
    employee_dob DATETIME NULL,
    employee_address VARCHAR(50) NULL,
    employee_phone DECIMAL(18, 0) NULL,
    employee_email VARCHAR(50) NULL,
    employee_gender VARCHAR(10) NULL,
    employee_doj DATETIME NULL,
    dept_no INT NULL,
    desig_id INT NULL,
    PRIMARY KEY (employee_no)
);



CREATE TABLE individual_allergic_master (
    drug_trial_id INT NOT NULL,
    allergic_id INT NOT NULL,
    PRIMARY KEY (drug_trial_id, allergic_id)
);



CREATE TABLE individual_clinical_master (
    individual_id INT NULL,
    clinical_cond_id INT NULL,
    first_diagnosis_date DATETIME NULL,
    initial_sympt_descr VARCHAR(50) NULL,
    status_cond VARCHAR(20) NULL
);



CREATE TABLE individual_master (
    individual_id INT NOT NULL,
    individual_name VARCHAR(50) NULL,
    individual_dob DATETIME NULL,
    individual_gender VARCHAR(10) NULL,
    individual_address VARCHAR(50) NULL,
    individual_phone DECIMAL(18, 0) NULL,
    individual_email VARCHAR(50) NULL,
    PRIMARY KEY (individual_id)
);



CREATE TABLE individual_reaction_master (
    drug_trial_id INT NOT NULL,
    reaction_agent_id INT NOT NULL,
    PRIMARY KEY (drug_trial_id, reaction_agent_id)
);



CREATE TABLE login_master (
    user_name VARCHAR(20) NOT NULL,
    password VARCHAR(30) NOT NULL,
    profile_id INT NULL,
    reg_id INT NULL,
    PRIMARY KEY (user_name)
);



CREATE TABLE profile_master (
    profile_id INT NOT NULL,
    profile_name VARCHAR(50) NULL,
    profile_descr VARCHAR(50) NULL,
    PRIMARY KEY (profile_id)
);



CREATE TABLE reaction_agent_master (
    reaction_agent_id INT NOT NULL,
    reaction_short_name VARCHAR(50) NULL,
    reaction_long_name VARCHAR(30) NULL,
    reaction_general_descr VARCHAR(50) NULL,
    PRIMARY KEY (reaction_agent_id)
);



CREATE TABLE usage_condition_master (
    drug_cond_id INT NOT NULL,
    drug_cond_descr VARCHAR(30) NULL,
    any_other_details VARCHAR(30) NULL,
    PRIMARY KEY (drug_cond_id)
);



ALTER TABLE allergic_symp_master
ADD PRIMARY KEY (allergic_id);


ALTER TABLE anti_allerg_symp_drug
ADD PRIMARY KEY (anti_allerg_drug_id, allergic_id);


ALTER TABLE anti_allergic_drug
ADD PRIMARY KEY (anti_allerg_drug_id);


ALTER TABLE clinical_cond_master
ADD PRIMARY KEY (clinical_cond_id);


ALTER TABLE condition_master
ADD PRIMARY KEY (condition_id);


ALTER TABLE department_master
ADD PRIMARY KEY (dept_no);


ALTER TABLE designation_master
ADD PRIMARY KEY (desig_id);


ALTER TABLE drug_reg_master
ADD PRIMARY KEY (drug_id);


ALTER TABLE drug_trial_master
ADD PRIMARY KEY (drug_trial_id);


ALTER TABLE employee_master
ADD PRIMARY KEY (employee_no);


ALTER TABLE individual_allergic_master
ADD PRIMARY KEY (drug_trial_id, allergic_id);


ALTER TABLE individual_master
ADD PRIMARY KEY (individual_id);


ALTER TABLE individual_reaction_master
ADD PRIMARY KEY (drug_trial_id, reaction_agent_id);


ALTER TABLE login_master
ADD PRIMARY KEY (user_name, password);


ALTER TABLE profile_master
ADD PRIMARY KEY (profile_id);


ALTER TABLE reaction_agent_master
ADD PRIMARY KEY (reaction_agent_id);


ALTER TABLE usage_condition_master
ADD PRIMARY KEY (drug_cond_id);


ALTER TABLE anti_allerg_symp_drug
ADD FOREIGN KEY (allergic_id) REFERENCES allergic_symp_master (allergic_id),
ADD FOREIGN KEY (anti_allerg_drug_id) REFERENCES anti_allergic_drug (anti_allerg_drug_id);


ALTER TABLE clinical_cond_master
ADD FOREIGN KEY (condition_id) REFERENCES condition_master (condition_id);


ALTER TABLE drug_reaction_agent
ADD FOREIGN KEY (drug_id) REFERENCES drug_reg_master (drug_id),
ADD FOREIGN KEY (reaction_agent_id) REFERENCES reaction_agent_master (reaction_agent_id);


ALTER TABLE drug_trial_master
ADD CONSTRAINT FK_drug_trial_drug_id FOREIGN KEY (drug_id) REFERENCES drug_reg_master (drug_id),
ADD CONSTRAINT FK_drug_trial_employee_no FOREIGN KEY (employee_no) REFERENCES employee_master (employee_no),
ADD CONSTRAINT FK_drug_trial_individual_id FOREIGN KEY (individual_id) REFERENCES individual_master (individual_id);


ALTER TABLE drug_usage_cond_master
ADD FOREIGN KEY (drug_id) REFERENCES drug_reg_master (drug_id),
ADD FOREIGN KEY (drug_cond_id) REFERENCES usage_condition_master (drug_cond_id);


ALTER TABLE employee_master
ADD FOREIGN KEY (dept_no) REFERENCES department_master (dept_no),
ADD FOREIGN KEY (desig_id) REFERENCES designation_master (desig_id);


ALTER TABLE individual_allergic_master
ADD FOREIGN KEY (allergic_id) REFERENCES allergic_symp_master (allergic_id),
ADD CONSTRAINT FK_individual_drug_trial_id FOREIGN KEY (drug_trial_id) REFERENCES drug_trial_master (drug_trial_id);


ALTER TABLE individual_clinical_master
ADD FOREIGN KEY (clinical_cond_id) REFERENCES clinical_cond_master (clinical_cond_id),
ADD FOREIGN KEY (individual_id) REFERENCES individual_master (individual_id);


ALTER TABLE individual_reaction_master
ADD CONSTRAINT FK_individual_drug_trial_id FOREIGN KEY (drug_trial_id) REFERENCES drug_trial_master (drug_trial_id),
ADD FOREIGN KEY (reaction_agent_id) REFERENCES reaction_agent_master (reaction_agent_id);


ALTER TABLE login_master
ADD FOREIGN KEY (profile_id) REFERENCES profile_master (profile_id);


/*SELECT * FROM `table` WHERE `column` IS NULL*/



DELIMITER //

CREATE PROCEDURE dept_insert(
    IN dept_no INT,
    IN dept_name VARCHAR(50),
    IN dept_descr VARCHAR(50),
    IN hig_desig_id INT
)
BEGIN
    INSERT INTO department (dept_no, dept_name, dept_descr, hig_desig_id)
    VALUES (dept_no, dept_name, dept_descr, hig_desig_id);
END //

DELIMITER ;



/*SELECT * FROM `table` WHERE `column` IS NULL*/


/*SELECT * FROM `table` WHERE `column` IS NULL*/


DELIMITER //

CREATE PROCEDURE desig_insert(
    IN desig_id INT,
    IN desig_name VARCHAR(30),
    IN desig_descr VARCHAR(30)
)
BEGIN
    INSERT INTO designation_master (desig_id, desig_name, desig_descr)
    VALUES (desig_id, desig_name, desig_descr);
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/




DELIMITER //

CREATE PROCEDURE max_allergic_id()
BEGIN
    SELECT MAX(allergic_id) + 1 AS next_allergic_id FROM allergic_symp_master;
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/

DELIMITER //

CREATE PROCEDURE max_anti_drug()
BEGIN
    SELECT MAX(anti_allerg_drug_id) + 1 AS next_anti_allerg_drug_id FROM anti_allergic_drug;
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/

DELIMITER //

CREATE PROCEDURE max_cli_id()
BEGIN
    SELECT MAX(clinical_cond_id) + 1 AS next_clinical_cond_id FROM clinical_cond_master;
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/

DELIMITER //

CREATE PROCEDURE max_cond_id()
BEGIN
    SELECT MAX(condition_id) + 1 AS next_condition_id FROM condition_master;
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/

DELIMITER //

CREATE PROCEDURE max_dept_no()
BEGIN
    SELECT MAX(dept_no) + 1 AS next_dept_no FROM department_master;
END //

DELIMITER ;

/*SELECT * FROM `table` WHERE `column` IS NULL*/

DELIMITER //

CREATE PROCEDURE max_desig_id()
BEGIN
    SELECT MAX(desig_id) + 1 AS next_desig_id FROM designation_master;
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/

DELIMITER //

CREATE PROCEDURE max_drug_id()
BEGIN
    SELECT MAX(drug_id) + 1 AS next_drug_id FROM drug_reg_master;
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/

DELIMITER //

CREATE PROCEDURE max_drug_trial_id()
BEGIN
    SELECT MAX(drug_trial_id) + 1 AS next_drug_trial_id FROM drug_trial_master;
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/

DELIMITER //

CREATE PROCEDURE max_employee_no()
BEGIN
    SELECT MAX(employee_no) + 1 AS next_employee_no FROM employee_master;
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/

DELIMITER //

CREATE PROCEDURE max_individual_id()
BEGIN
    SELECT MAX(individual_id) + 1 AS next_individual_id FROM individual_master;
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/

DELIMITER //

CREATE PROCEDURE max_rea_id()
BEGIN
    SELECT MAX(reaction_agent_id) + 1 AS next_reaction_agent_id FROM reaction_agent_master;
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/

DELIMITER //

CREATE PROCEDURE max_usage_id()
BEGIN
    SELECT MAX(drug_cond_id) + 1 AS next_drug_cond_id FROM usage_condition_master;
END //

DELIMITER ;


/*SELECT * FROM `table` WHERE `column` IS NULL*/