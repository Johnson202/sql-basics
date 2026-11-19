-- Schema
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS classes;

CREATE TABLE students (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer
);

CREATE TABLE addresses (
  id           serial PRIMARY KEY,
  line_1       VARCHAR(255) NOT NULL,
  city         VARCHAR(255) NOT NULL,
  state        VARCHAR(255) NOT NULL,
  zipcode      VARCHAR(255) NOT NULL  
);

CREATE TABLE classes (
  id           serial PRIMARY KEY,
  name         VARCHAR(255) NOT NULL,
  credits      INTEGER NOT NULL  
);

CREATE TABLE enrollments (
  id           serial PRIMARY KEY,
  student_id   INTEGER NOT NULL REFERENCES students(id),
  class_id     INTEGER NOT NULL REFERENCES classes(id),
  grade        VARCHAR(255)
);