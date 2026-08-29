CREATE DATABASE student_course_db;

USE student_course_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    city VARCHAR(50),
    admission_year INT
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    credits INT,
    instructor VARCHAR(50),
    course_fee DECIMAL(10,2)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    status VARCHAR(20),
    marks INT,

    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students 
(student_name, gender, email, phone, city, admission_year)
VALUES
('Ravi Kumar', 'Male', 'ravi@gmail.com', '9876543210', 'Hyderabad', 2023),
('Anjali Sharma', 'Female', 'anjali@gmail.com', '9876543211', 'Delhi', 2023),
('Kiran Reddy', 'Male', 'kiran@gmail.com', '9876543212', 'Chennai', 2022),
('Sneha Rao', 'Female', 'sneha@gmail.com', '9876543213', 'Bangalore', 2024),
('Aman Verma', 'Male', 'aman@gmail.com', '9876543214', 'Mumbai', 2023),
('Priya Singh', 'Female', 'priya@gmail.com', '9876543215', 'Pune', 2022),
('Rahul Mehta', 'Male', 'rahul@gmail.com', '9876543216', 'Delhi', 2024),
('Divya Nair', 'Female', 'divya@gmail.com', '9876543217', 'Hyderabad', 2023),
('Vikram Rao', 'Male', 'vikram@gmail.com', '9876543218', 'Hyderabad', 2022),
('Neha Kapoor', 'Female', 'neha@gmail.com', '9876543219', 'Delhi', 2023),
('Arjun Patel', 'Male', 'arjun@gmail.com', '9876543220', 'Mumbai', 2024),
('Pooja Reddy', 'Female', 'pooja@gmail.com', '9876543221', 'Bangalore', 2023),
('Suresh Kumar', 'Male', 'suresh@gmail.com', '9876543222', 'Chennai', 2022),
('Meena Iyer', 'Female', 'meena@gmail.com', '9876543223', 'Chennai', 2024),
('Nikhil Sharma', 'Male', 'nikhil@gmail.com', '9876543224', 'Delhi', 2023),
('Kavya Das', 'Female', 'kavya@gmail.com', '9876543225', 'Kolkata', 2022),
('Rohit Verma', 'Male', 'rohit@gmail.com', '9876543226', 'Pune', 2024),
('Aisha Khan', 'Female', 'aisha@gmail.com', '9876543227', 'Hyderabad', 2023),
('Manoj Naidu', 'Male', 'manoj@gmail.com', '9876543228', 'Vizag', 2022),
('Deepika Joshi', 'Female', 'deepika@gmail.com', '9876543229', 'Pune', 2023),
('Karthik Babu', 'Male', 'karthik@gmail.com', '9876543230', 'Bangalore', 2024),
('Swathi Menon', 'Female', 'swathi@gmail.com', '9876543231', 'Kochi', 2022),
('Abhishek Singh', 'Male', 'abhishek@gmail.com', '9876543232', 'Lucknow', 2023),
('Riya Gupta', 'Female', 'riya@gmail.com', '9876543233', 'Jaipur', 2024),
('Tarun Yadav', 'Male', 'tarun@gmail.com', '9876543234', 'Patna', 2022),
('Lakshmi Devi', 'Female', 'lakshmi@gmail.com', '9876543235', 'Hyderabad', 2023),
('Varun Shetty', 'Male', 'varun@gmail.com', '9876543236', 'Mangalore', 2024),
('Nandini Rao', 'Female', 'nandini@gmail.com', '9876543237', 'Bangalore', 2022),
('Harish Kumar', 'Male', 'harish@gmail.com', '9876543238', 'Chennai', 2023),
('Shreya Patel', 'Female', 'shreya@gmail.com', '9876543239', 'Mumbai', 2024),
('Ramesh Gupta', 'Male', 'ramesh@gmail.com', '9876543240', 'Delhi', 2022),
('Ananya Roy', 'Female', 'ananya@gmail.com', '9876543241', 'Kolkata', 2023),
('Gaurav Mishra', 'Male', 'gaurav@gmail.com', '9876543242', 'Lucknow', 2024),
('Ishita Jain', 'Female', 'ishita@gmail.com', '9876543243', 'Jaipur', 2022),
('Vivek Reddy', 'Male', 'vivek@gmail.com', '9876543244', 'Hyderabad', 2023),
('Sakshi Verma', 'Female', 'sakshi@gmail.com', '9876543245', 'Pune', 2024),
('Aditya Rao', 'Male', 'aditya@gmail.com', '9876543246', 'Vizag', 2022),
('Madhuri Nair', 'Female', 'madhuri@gmail.com', '9876543247', 'Kochi', 2023);

INSERT INTO courses 
(course_name, category, credits, instructor, course_fee)
VALUES
('Database Management System', 'Computer Science', 4, 'Dr. Rao', 5000),
('Python Programming', 'Programming', 3, 'Ms. Kavitha', 4500),
('Web Development', 'Programming', 3, 'Mr. Arjun', 6000),
('Data Structures', 'Computer Science', 4, 'Dr. Mehta', 5500),
('Machine Learning', 'Artificial Intelligence', 4, 'Dr. Priya', 8000),
('Cloud Computing', 'Computer Science', 3, 'Mr. John', 7000),
('Java Programming', 'Programming', 4, 'Dr. Suresh', 5500),
('C Programming', 'Programming', 3, 'Ms. Anitha', 3500),
('Artificial Intelligence', 'Artificial Intelligence', 4, 'Dr. Vikram', 8500),
('Data Science', 'Data Science', 4, 'Dr. Neha', 9000),
('Cyber Security', 'Cyber Security', 3, 'Mr. Raj', 7500),
('Software Engineering', 'Computer Science', 3, 'Ms. Divya', 5000);

INSERT INTO enrollments
(student_id, course_id, enrollment_date, status, marks)
VALUES
