create database project;
use project;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(80) NOT NULL,
    password VARCHAR(30) NOT NULL
);

insert into users values(1, 'john_doe', 'john@example.com', 'password123'),
(2, 'jane_smith', 'jane@example.com', 'password456'),
(3, 'bob_roberts', 'bob@example.com', 'password789'),
(4, 'alice_jones', 'alice@example.com', 'password@123'),
(5, 'mike_smith', 'mike@example.com', 'password@456'),
(6, 'emily_davis', 'emily@example.com', 'password@789'),
(7, 'alex_brown', 'alex@example.com', 'password_123'),
(8, 'sara_miller', 'sara@example.com', 'password++456'),
(9, 'chris_wilson', 'chris@example.com', 'password+789'),
(10, 'lisa_johnson', 'lisa@example.com', 'password$123'),
(11, 'ryan_thomas', 'ryan@example.com', 'password$456'),
(12, 'amy_wilson', 'amy@example.com', 'password$789'),
(13, 'david_clark', 'david@example.com', 'password&123'),
(14, 'jessica_taylor', 'jessica@example.com', 'password&456'),
(15, 'andrew_lee', 'andrew@example.com', 'password&789'),
(16, 'sam_robinson', 'sam@example.com', 'password#123'),
(17, 'katie_white', 'katie@example.com', 'password#456'),
(18, 'kevin_hall', 'kevin@example.com', 'password#789'),
(19, 'laura_wood', 'laura@example.com', 'password%123'),
(20, 'matt_morgan', 'matt@example.com', 'password%456');

drop table companies;
drop table users;
drop table jobs;
drop table applications;



CREATE TABLE companies (
    company_id INT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    industry VARCHAR(80) ,
    location VARCHAR(100) 
);

INSERT INTO companies (company_id, name, industry, location) VALUES
(101, 'ABC Corp', 'Technology', 'New York'),
(102, 'XYZ Inc', 'Finance', 'London'),
(103, '123 Solutions', 'Healthcare', 'Los Angeles'),
(104, 'Tech Innovators', 'Technology', 'San Francisco'),
(105, 'Global Finance', 'Finance', 'New York'),
(106, 'HealthCare Solutions', 'Healthcare',''),
(107, 'Creative Minds', 'Design', 'Los Angeles'),
(108, 'Marketing Pros', 'Marketing', 'Boston'),
(109, 'Green Energy Corp', 'Energy', 'Seattle'),
(110, 'Logistics Solutions', 'Transportation', 'Dallas'),
(111, 'Foodies Inc', 'Food', 'Miami'),
(112, 'Legal Associates', 'Washington', 'D.C.'),
(113, 'Educational Insights', 'Education', 'Denver'),
(114, 'Fashion World', 'Fashion', 'Paris'),
(115, 'Media Hub', 'Media', 'Toronto'),
(116, 'Real Estate Experts', 'Real Estate', 'Sydney'),
(117, 'Hospitality Haven', 'Hospitality', 'Dubai'),
(118, 'Construction Masters', 'Construction', 'Tokyo'),
(119, 'Automotive Innovations', 'Automotive', 'Berlin'),
(120, 'Entertainment Empire', 'Entertainment', 'London');


CREATE TABLE jobs (
    job_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    company_id INT NOT NULL,
    description TEXT NOT NULL,
    salary DECIMAL(10, 2),
    location VARCHAR(100) ,
    posted_date DATE NOT NULL,
    foreign key (company_id) references companies(company_id)
);

INSERT INTO jobs (job_id, title, company_id, description, salary, location, posted_date) VALUES
(1001, 'Software Engineer', 101, 'We are seeking a talented Software Engineer to join our team.', 80000.00, 'New York', '2024-01-15'),
(1002, 'Financial Analyst', 102, 'Join our finance team and contribute to our company’s success.', 70000.00, 'London', '2024-01-20'),
(1003, 'Registered Nurse', 103, 'Looking for compassionate nurses to join our healthcare team.', 60000.00, 'Los Angeles', '2024-01-25'),
(1004, 'Frontend Developer', 104, 'We are seeking a skilled Frontend Developer to join our team.', 90000.00, 'San Francisco', '2024-01-15'),
(1005, 'Accountant', 105, 'Join our finance team and handle financial tasks efficiently.', 75000.00, 'New York', '2024-01-20'),
(1006, 'Nurse Practitioner', 106, 'Looking for experienced Nurse Practitioners to provide high-quality care.', 65000.00, 'Chicago', '2024-01-25'),
(1007, 'Graphic Designer', 107, 'Create visually appealing designs for our clients.', 70000.00, 'Los Angeles', '2024-01-15'),
(1008, 'Marketing Manager', 108, 'Develop and implement marketing strategies for our brand.', 80000.00, 'Boston', '2024-01-20'),
(1009, 'Environmental Engineer', 109, 'Contribute to sustainable energy solutions with our team.', 95000.00, 'Seattle', '2024-01-25'),
(1010, 'Logistics Coordinator', 110, 'Manage and coordinate logistics operations effectively.', 60000.00,'', '2024-01-15'),
(1011, 'Chef', 111, 'Bring your culinary skills to our kitchen and delight our customers.', 55000.00, 'Miami', '2024-01-20'),
(1012, 'Legal Counsel', 112, 'Provide legal advice and support to our clients.', 100000.00, 'Washington, D.C.', '2024-01-25'),
(1013, 'Teacher', 113, 'Inspire and educate students with innovative teaching methods.', 50000.00,'','2024-01-15'),
(1014, 'Fashion Designer', 114, 'Create stunning fashion designs that captivate the audience.', 85000.00, 'Paris', '2024-01-20'),
(1015, 'Content Writer', 115, 'Produce engaging content for various media platforms.', 60000.00, 'Toronto', '2024-01-25'),
(1016, 'Real Estate Agent', 116, 'Help clients buy, sell, and rent properties.', 90000.00, 'Sydney', '2024-01-15'),
(1017, 'Hotel Manager', 117, 'Ensure smooth operations and exceptional service at our hotel.', 75000.00, 'Dubai', '2024-01-20'),
(1018, 'Construction Worker', 118, 'Assist in various construction projects with our skilled team.', 65000.00, 'Tokyo', '2024-01-25'),
(1019, 'Automotive Technician', 119, 'Diagnose and repair vehicle issues with precision.', 70000.00, 'Berlin', '2024-01-15'),
(1020, 'Actor', 120, 'Showcase your talent on stage or screen with our production team.', 80000.00, 'London', '2024-01-20');


CREATE TABLE applications (
    application_id INT PRIMARY KEY,
    job_id INT NOT NULL,
    user_id INT NOT NULL,
    application_date DATE NOT NULL,
    status ENUM('pending', 'accepted', 'rejected') NOT NULL,
    foreign key (job_id) references jobs(job_id),
    foreign key (user_id) references users(user_id)
);

INSERT INTO applications (application_id, job_id, user_id, application_date, status) VALUES
(801, 1001, 1, '2024-01-16', 'pending'),
(802, 1002, 2, '2024-01-21', 'accepted'),
(803, 1003, 3, '2024-01-26', 'rejected'),
(804, 1004, 4, '2024-01-17', 'pending'),
(805, 1005, 5, '2024-01-22', 'pending'),
(806, 1006, 6, '2024-01-27', 'accepted'),
(807, 1007, 7, '2024-01-18', 'rejected'),
(808, 1008, 8, '2024-01-23', 'pending'),
(809, 1009, 9, '2024-01-28', 'accepted'),
(810, 1010, 10, '2024-01-19', 'pending'),
(811, 1011, 11, '2024-01-24', 'rejected'),
(812, 1012, 12, '2024-01-29', 'accepted'),
(813, 1013, 13, '2024-01-20', 'pending'),
(814, 1014, 14, '2024-01-25', 'accepted'),
(815, 1015, 15, '2024-01-30', 'pending'),
(816, 1016, 16, '2024-01-21', 'pending'),
(817, 1017, 17, '2024-01-26', 'accepted'),
(818, 1018, 18, '2024-01-31', 'pending'),
(819, 1019, 19, '2024-01-22', 'accepted'),
(820, 1020, 20, '2024-01-27', 'pending');

select * from users;
select * from applications;
select * from jobs;
select * from companies;

desc companies;

-- Subqueries Questions

-- List the job titles and salaries of jobs posted by companies located in New York.
select title, salary from jobs
where company_id in (
					 select company_id from companies 
					 where location = "New York"
					);

-- Retrieve the job titles with the highest salaries.
select title , salary from jobs
where salary = (
				select max(Salary) from jobs
				);

-- Find the usernames of users who have applied for jobs with a status of 'accepted'.
select username from users
where user_id in ( 
				  select user_id from applications
                  where status = 'accepted'
                  );

-- Find the job titles and salaries of jobs posted by companies located in the same city as the company 'Tech Innovators'.
select title, salary 
from jobs 
where company_id in(
					select company_id from companies
					where location in 
						(
						select location from companies
						where name='Tech Innovators'
                        )
					);


-- Joins Questions
-- Find the users who have applied for a job and the job titles they applied for.
select u.username, j.title 
from users u inner join applications a 
on u.user_id = a.user_id 
inner join jobs j 
on j.job_id = a.job_id;


-- Find the job titles, salaries, and corresponding company names.
select j.title, j.salary, c.name
from jobs j inner join companies c 
on j.company_id = c.company_id;

-- Find the usernames and job titles of users who have applied for jobs with salaries greater than 80,000.
select u.username, j.title, j.salary
from users u inner join applications a 
on u.user_id = a.user_id
inner join jobs j
on j.job_id = a.job_id
where salary > 80000;

-- Find the total number of job applications received by each company.
select c.name as company_name, count(a.application_id) as total_applications
from companies c left join jobs j
on c.company_id = j.company_id
left join applications a
on j.job_id = a.job_id
group by c.name;

select * from companies
left join jobs 
on companies.company_id = jobs.company_id;


select * from companies
right join jobs 
on companies.company_id = jobs.company_id;
 

select * from companies
left join jobs 
on companies.company_id = jobs.company_id
union
select * from companies
right join jobs 
on companies.company_id = jobs.company_id;

CREATE VIEW user_emails_view AS
SELECT user_id, username, email
FROM users;

select * from user_emails_view;


CREATE VIEW password_lengths AS
SELECT LENGTH(password) AS password_length, COUNT(*) AS user_count
FROM users
GROUP BY password_length;

select * from password_lengths;

create view usernames_starting_with_a as
select * from users
where username like 'A%';

select * from usernames_starting_with_a;


create view user_job_application_view as
select u.user_id, u.username, j.title , j.description , j.salary , j.location , a.application_date, a.status
from users u
left join applications a on u.user_id = a.user_id
left join jobs j on a.job_id = j.job_id;

select * from user_job_application_view;