USE student_management_db;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    student_id          INT AUTO_INCREMENT PRIMARY KEY,
    admission_number    VARCHAR(20) UNIQUE NOT NULL,
    first_name          VARCHAR(50) NOT NULL,
    last_name           VARCHAR(50) NOT NULL,
    father_name         VARCHAR(100) NOT NULL,
    mother_name         VARCHAR(100) NOT NULL,
    guardian_name       VARCHAR(100) DEFAULT NULL,
    guardian_relation   VARCHAR(30) DEFAULT NULL,
    date_of_birth       DATE NOT NULL,
    gender              ENUM('M', 'F', 'O') NOT NULL,
    email               VARCHAR(100) DEFAULT NULL,
    phone_number        VARCHAR(15) DEFAULT NULL,
    address             TEXT DEFAULT NULL,
    student_aadhaar     CHAR(12) DEFAULT NULL,
    father_aadhaar      CHAR(12) DEFAULT NULL,
    mother_aadhaar      CHAR(12) DEFAULT NULL,
    guardian_aadhaar    CHAR(12) DEFAULT NULL,
    enrollment_date     DATE NOT NULL DEFAULT (CURRENT_DATE),
    blood_group         VARCHAR(5) DEFAULT NULL,
    current_class       VARCHAR(20) NOT NULL COMMENT 'e.g., Nursery, LKG, UKG, Class 1, ..., Class 8',
    created_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
);