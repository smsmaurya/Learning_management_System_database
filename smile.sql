create database Learning_Mgmt_System;
use Learning_Mgmt_System;
show databases;

CREATE TABLE UserDetails (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    Password varchar(20) NOT NULL,
    contact_number VARCHAR(20),
    verified BOOLEAN NOT NULL DEFAULT FALSE,
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user INT
);
desc UserDetails;

Alter table UserDetails modify ID INT Unsigned AUTO_INCREMENT;
Alter table UserDetails modify creator_stamp  TimeStamp DEFAULT Current_TImeStamp;


INSERT INTO UserDetails (Email,first_name,last_name,Password,contact_number,verified,creator_user) Values
('Sumesh12@gmail.com','Sumesh','Maurya','smsmry','9923636736',true,1),
('Rakesh65@gmail.com','Rakesh','Pandey','rkpandey','9756454566',true,1),
('Rohan4@gmail.com','Rohan','Dute','rohand12','8643456736',true,1),
('Sanketg@gmail.com','Sanket','Garde','sgarde88','8652741521',true,1),
('Sushil34@gmail.com','Sushil','Gupta','skgupta12','9756475666',true,1),
('Swapnil69@gmail.com','Swapnil','Patil','sPatil','872644556',true,1),
('Aditya55@gmail.com','Aditya','Sharma','A_sharma','9478536996',true,1),
('SanketJ4@gmail.com','Sanket','Jadhav','SanketJ6','7866367936',true,1),
('Harshal99@gmail.com','Harshal','Malviya','HasMal22','888636736',true,1),
('Kuldeep2@gmail.com','Kul','Deep','KD64546','8123636345',true,1),
('Vishlesha@gmail.com','Vishlesha','Mortale','Vishlesha','8884568844',true,1),
('Ashish12@gmail.com','Ashish','Dash','AsDash2','8763006730',true,1),
('Zubair33@gmail.com','Zubair','Khan','khanz345','9923565654',true,1),
('RyanChat@gmail.com','Ryan','Chattier','rChattier','678546736',true,1),
('Jasmon66@gmail.com','Jasmon','Eppan','jussyEpon','6883665730',true,1),
('Devesh78@gmail.com','Devesh','Singh','devsingh','8976396266',true,1),
('Mahesh11@gmail.com','Mahesh','Patole','mp356752','8354546736',true,1),
('Sunil57@gmail.com','Sunil','Patel','sp_sir22','8652215767',true,1),
('Shardhha@gmail.com','Shradhha','Shirodkar','S_Shiro233','9918815532',true,1),
('Sachin05@gmail.com','Sachin','Epili','samEpili','8823678511',true,1);


select * from UserDetails;
show tables;

-- ------------------------------------------------Hired Candidates------------------------------------------------------
CREATE TABLE HiredCandidate
    (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50),
    LastName VARCHAR(50) NOT NULL,
    EmailId VARCHAR(255) NOT NULL,
    HiredCity VARCHAR(100),
    Degree VARCHAR(100),
    HiredDate DATE,
    MobileNumber VARCHAR(20),
    PermanentPincode VARCHAR(15),
    HiredLab VARCHAR(100),
    Attitude VARCHAR(255),
    CommunicationRemark VARCHAR(255),
    KnowledgeRemark VARCHAR(255),
    AggregateRemark VARCHAR(255),
    Status VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT
);

Insert into HiredCandidate(FirstName, MiddleName, LastName, EmailId, HiredCity, Degree, HiredDate, MobileNumber, 
PermanentPincode, HiredLab, Attitude, CommunicationRemark, KnowledgeRemark, AggregateRemark, Status, CreatorUser) values
('Sumesh','Omprakash','Maurya','Sumesh12@gmail.com','Mumbai','B.Tech','2023-10-17','9923636736', '400072','Mum-Lab','Good','Avg','Good','70.56','Hired',2),
('Rakesh','Kumar','Pandey','Rakesh65@gmail.com','Mumbai','B.Tech','2023-07-06','9756454566', '300072','Mum-Lab','Good','Good','Good','72.43','Hired',2),
('Sanket','','Garde','Sanketg@gmail.com','Pune','B.Tech','2023-10-17','8652741521', '400086','Pun-Lab','Good','Good','Good','76.86','Hired',2),
('Rohan','','Dute','Rohan4@gmail.com','Mumbai','B.Tech','2023-07-06','8643456736', '400045','Mum-Lab','Good','Good','Good','78','Hired',2),
('Swapnil','','Patil','Swapnil69@gmail.com','Mumbai','B.Tech','2023-07-15','872644556', '400066','Mum-Lab','Good','Good','Good','78.07','Hired',2),
('Sushil','Kumar','Gupta','Sushil34@gmail.com','Bangalore','B.Tech','2023-10-17','9756475666', '560029','Ban-Lab','Good','Good','Good','73.72','Hired',2),
('Aditya','','Sharma','Aditya55@gmail.com','Mumbai','B.Tech','2023-07-17','9478536996', '400068','Mum-Lab','Good','Good','Good','70.86','Hired',2),
('Sanket','Rajkumar','Jadhav','SanketJ4@gmail.com','Mumbai','B.Tech','2023-07-12','7866367936', '400028','Mum-Lab','Good','Good','Good','87.89','Hired',2),
('Harshal','','Malviya','Harshal99@gmail.com','Pune','B.Tech','2023-07-07','888636736', '400234','Pun-Lab','Good','Good','Good','74.33','Hired',2),
('Vishlesha','','Mortale','Vishlesha@gmail.com','Mumbai','B.Tech','2023-10-11','8884568844', '410062','Mum-Lab','Good','Good','Good','70.56','Hired',2),
('Ashish','','Dash','Ashish12@gmail.com','Bangalore','B.Tech','2023-04-23','8763006730', '570072','Ban-Lab','Good','Good','Good','76.59','Pending',2),
('Kul','','Deep','Kuldeep2@gmail.com','Bangalore','B.Tech','2023-11-27','8123636345', '540012','Ban-Lab','Good','Avg','Good','67.44','Pending',2),
('Zubair','','Khan','Zubair33@gmail.com','Mumbai','B.Tech','2023-10-17','9923565654', '440044','Mum-Lab','Good','Avg','Avg','57.56','Rejected',2);

SET SQL_SAFE_UPDATES = 0;
Update HiredCandidate
SET status = 'Pending'
Where id in (13);

select * from HiredCandidate;
-- ----------------------------------------------------FellowshipCandidate------------------------------------------------- 
CREATE TABLE FellowshipCandidate
   (
    Id INT,
    CandidateId VARCHAR(20) NOT NULL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50),
    LastName VARCHAR(50) NOT NULL,
    EmailId VARCHAR(255) NOT NULL,
    HiredCity VARCHAR(100), 
    Degree VARCHAR(100),
    HiredDate DATE,
    MobileNumber VARCHAR(20),
    PermanentPincode VARCHAR(15),
    HiredLab VARCHAR(100),
    Attitude VARCHAR(255),
    CommunicationRemark VARCHAR(255),
    KnowledgeRemark VARCHAR(255),
    AggregateRemark VARCHAR(255),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    BirthDate DATE,
    IsBirthDateVerified BOOLEAN,
    ParentName VARCHAR(100),
    ParentOccupation VARCHAR(100),
    ParentsMobileNumber VARCHAR(20),
    ParentsAnnualSalary DECIMAL(10, 2), 
    LocalAddress VARCHAR(255),
    PermanentAddress VARCHAR(255),
    PhotoPath VARCHAR(255),
    JoiningDate DATE,
    CandidateStatus VARCHAR(50),
    PersonalInformation TEXT,
    BankInformation TEXT,
    EducationalInformation TEXT,
    DocumentStatus VARCHAR(50),
    Remark TEXT,
    FOREIGN KEY (Id) REFERENCES HiredCandidate(Id)
);


INSERT INTO FellowshipCandidate
(
    Id, CandidateId, FirstName, MiddleName, LastName, EmailId, HiredCity, Degree, HiredDate, MobileNumber, PermanentPincode, HiredLab, Attitude, CommunicationRemark, KnowledgeRemark,
    AggregateRemark, CreatorStamp, CreatorUser, BirthDate, IsBirthDateVerified, ParentName, ParentOccupation, ParentsMobileNumber, ParentsAnnualSalary, LocalAddress, PermanentAddress,
    PhotoPath, JoiningDate, CandidateStatus, PersonalInformation, BankInformation, EducationalInformation, DocumentStatus, Remark
)
SELECT
    Id,
    CONCAT('CIC', LPAD(Id, 5, '0')) AS CandidateId,
    FirstName,
    MiddleName,
    LastName,
    EmailId,
    HiredCity,
    Degree,
    HiredDate,
    MobileNumber,
    PermanentPincode,
    HiredLab,
    Attitude,
    CommunicationRemark,
    KnowledgeRemark,
    AggregateRemark,
    CreatorStamp,
    2 AS CreatorUser,
    '2000-03-08' AS BirthDate,
    true AS IsBirthDateVerified,
    'Rajkumar' AS ParentName,
    'Businessman' AS ParentOccupation,
    '9768357248' AS ParentsMobileNumber,
    720000 AS ParentsAnnualSalary,
    'Mumbai' AS LocalAddress,
    'Mahashtra' AS PermanentAddress,
    'No' AS PhotoPath,
    HiredDate AS JoiningDate,
    'Active' AS CandidateStatus,
    'NA' AS PersonalInformation,
    'Yes Bank' AS BankInformation,
    'Done' AS EducationalInformation,
    'Done' AS DocumentStatus,
    'Good' AS Remark
FROM HiredCandidate
WHERE Status = 'Active' AND Id = 9;

select * from FellowshipCandidate;

Alter table FellowshipCandidate
MODIFY COLUMN CandidateId INT AUTO_INCREMENT;
 
-- -------------------------------------------------CandidateBankDetails -------------------------------------------------
CREATE TABLE Candidate_Bank_Details (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    CandidateId VARCHAR(20),
    Name VARCHAR(100),
    AccountNumber VARCHAR(20),
    IsAccountNumVerified BOOLEAN,
    IfscCode VARCHAR(20),
    IsIFSCCodeVerified BOOLEAN,
    PanNumber VARCHAR(20),
    IsPanNumberVerified BOOLEAN,
    AadhaarNumber VARCHAR(20),
    IsAadhaarNumVerified BOOLEAN,
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CandidateId)
);

INSERT INTO Candidate_Bank_Details
( CandidateId, Name, AccountNumber, IsAccountNumVerified, IfscCode, IsIFSCCodeVerified, PanNumber, 
    IsPanNumberVerified, AadhaarNumber, IsAadhaarNumVerified, CreatorStamp, CreatorUser
)
SELECT 
    CandidateId, 
    BankInformation AS Name, 
    '4435765745673' AS AccountNumber, 
    1 AS IsAccountNumVerified, 
    'YESB0DADR' AS IfscCode, 
    1 AS IsIFSCCodeVerified, 
    'DADR4543M' AS PanNumber, 
    1 AS IsPanNumberVerified, 
    '235457575665' AS AadhaarNumber, 
    1 AS IsAadhaarNumVerified, 
    CURRENT_TIMESTAMP AS CreatorStamp, 
    2 AS CreatorUser
FROM FellowshipCandidate
WHERE id =9;

select * from Candidate_Bank_Details;
delete from Candidate_Bank_Details where id in (7);

-- ---------------------------------------------------CandidateQualification------------------------------------------------- 
CREATE TABLE CandidateQualification (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    CandidateId VARCHAR(20),
    Diploma VARCHAR(100),
    DegreeName VARCHAR(100),
    IsDegreeNameVerified BOOLEAN,
    EmployeeDiscipline VARCHAR(100),
    IsEmployeeDisciplineVerified BOOLEAN,
    PassingYear INT,
    IsPassingYearVerified BOOLEAN,
    AggrPer DECIMAL(5, 2),
    IsAggrPerVerified BOOLEAN,
    FinalYearPer DECIMAL(5, 2),
    IsFinalYearPerVerified BOOLEAN,
    TrainingInstitute VARCHAR(100),
    IsTrainingInstituteVerified BOOLEAN,
    TrainingDurationMonth INT,
    IsTrainingDurationMonthVerified BOOLEAN,
    OtherTraining VARCHAR(255),
    IsOtherTrainingVerified BOOLEAN,
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CandidateId)
);

INSERT INTO CandidateQualification
(
    CandidateId, Diploma, DegreeName, IsDegreeNameVerified, EmployeeDiscipline, IsEmployeeDisciplineVerified, PassingYear, IsPassingYearVerified, AggrPer, IsAggrPerVerified,
    FinalYearPer, IsFinalYearPerVerified, TrainingInstitute, IsTrainingInstituteVerified, TrainingDurationMonth, IsTrainingDurationMonthVerified, OtherTraining,
    IsOtherTrainingVerified, CreatorStamp, CreatorUser
)
SELECT
    CandidateId,
    'No' AS Diploma,
    'B.Tech CS' AS DegreeName,
    1 AS IsDegreeNameVerified,
    'Yes' AS EmployeeDiscipline,
    1 AS IsEmployeeDisciplineVerified,
    2022 AS PassingYear,
    1 AS IsPassingYearVerified,
    82.83 AS AggrPer,
    1 AS IsAggrPerVerified,
    88.73 AS FinalYearPer,
    1 AS IsFinalYearPerVerified,
    'BridgeLabz' AS TrainingInstitute,
    1 AS IsTrainingInstituteVerified,
    6 AS TrainingDurationMonth,
    1 AS IsTrainingDurationMonthVerified,
    'No' AS OtherTraining,
    1 AS IsOtherTrainingVerified,
    CURRENT_TIMESTAMP AS CreatorStamp,
    2 AS CreatorUser
FROM FellowshipCandidate
WHERE id =10;

select * from CandidateQualification;
show tables;
-- -----------------------------------------------CandidateDocuments------------------------------------------------------ 
CREATE TABLE CandidateDocuments (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    CandidateId VARCHAR(20),
    DocType VARCHAR(50),
    DocPath VARCHAR(255),
    Status VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CandidateId)
);

INSERT INTO CandidateDocuments
(
    CandidateId, DocType, DocPath, Status, CreatorStamp, CreatorUser
)
SELECT
    CandidateId,
    'Adhaar Card' AS DocType,
    'nationalID.jpeg' AS DocPath,
    'Recieved' AS Status,
    CURRENT_TIMESTAMP AS CreatorStamp,
    2 AS CreatorUser
FROM FellowshipCandidate
WHERE id =9;

select * from CandidateDocuments;
desc CandidateDocuments;

-- -------------------------------------------------------Company------------------------------------------------------------ 
CREATE TABLE Company (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    Location VARCHAR(100),
    Status VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT
);

INSERT INTO Company (Name, Address, Location, Status, CreatorUser)
VALUES
    ('Quality Kiosk', '419A, MBP Rd, Kopar Khairane', ' Navi Mumbai', 'Active', 1),
    ('ABC Software Innovators', '456 Innovation Avenue', 'Navi Mumbai', 'Active', 1),
    ('TechWise Solutions', '789 Testing Lane', 'Bangalore', 'Active', 1),
    ('Pioneer IT Services', '101 IT Park', 'Pune', 'Active', 1),
    ('Delta Software Solutions', '234 Development Road', 'Delhi', 'Active', 1),
    ('Infinite Coders', '567 Coding Street', 'Noida', 'Active', 1),
    ('Binary Systems', '890 Binary Lane', 'Mumbai', 'Active', 1),
    ('TechVista Innovations', '123 Tech Street', 'Navi Mumbai', 'Active', 1),
    ('Agile Software Solutions', '456 Agile Avenue', 'Bangalore', 'Active', 1),
    ('DevGenius Technologies', '789 Dev Lane', 'Pune', 'Active', 1),
    ('Innovate IT Services', '101 Innovation Park', 'Delhi', 'Active', 1),
    ('Nextron Labs', '234 Nextron Road', 'Noida', 'Active', 1),
    ('CodeCrafters India', '567 Coding Street', 'Mumbai', 'Active', 1),
    ('TechMasters Solutions', '890 Tech Lane', 'Navi Mumbai', 'Active', 1),
    ('TestGenius Systems', '123 Testing Street', 'Bangalore', 'Active', 1);


select * from company;

-- ----------------------------------------------------------AppParameters------------------------------------------------
CREATE TABLE App_Parameters (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    KeyType VARCHAR(50),
    KeyValue VARCHAR(255),
    KeyText TEXT,
    CurStatus VARCHAR(50),
    LastUpdateUser INT, 
    LastUpdateStamp TIMESTAMP,
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    SeqNum INT
);
drop table App_Parameters;

Insert into App_Parameters(KeyType, KeyValue, KeyText, CurStatus, LastUpdateUser, LastUpdateStamp, CreatorUser, SeqNum)values
('DOC_STATUS', 'PND', 'Pending', 'ACTV', 1, null, 1, 1),
('DOC_STATUS', 'RCEVD', 'Received', 'ACTV', 4, null, 1, 4),
('CUR_STATUS', 'ACTV', 'Active', 'ACTV', 3, null, 1, 2),
('CUR_STATUS', 'IACTV', 'Inactive', 'ACTV', 5, null, 1, 5),
('BATCH_STATUS', 'INPROCESS', 'In Process', 'ACTV', 6,null, 1,  7),
('BATCH_STATUS', 'HOLD', 'Hold', 'ACTV', 8, null, 1, 2),
('BATCH_STATUS', 'COMPL', 'Completed', 'ACTV', 7, null, 1, 6);

select * from App_Parameters; 
desc App_Parameters;

-- -------------------------------------------------------TechStack------------------------------------------------------ 
CREATE TABLE TechStack (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    TechName VARCHAR(100),
    ImagePath VARCHAR(255),
    Framework VARCHAR(100),
    CurStatus VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT
);

INSERT INTO TechStack (TechName, ImagePath, Framework, CurStatus, CreatorUser)
VALUES
    ('Java', '/images/java_logo.png', 'Spring Boot', 'Active', 1),
    ('Python', '/images/python_logo.png', 'Django', 'Active', 1),
    ('JavaScript', '/images/javascript_logo.png', 'React', 'Active', 1),
    ('C#', '/images/csharp_logo.png', '.NET Core', 'Active', 1),
    ('PHP', '/images/php_logo.png', 'Laravel', 'Active', 1),
    ('Node.js', '/images/nodejs_logo.png', 'Express.js', 'Active', 1),
    ('Swift', '/images/swift_logo.png', 'SwiftUI', 'Active', 1),
    ('Kotlin', '/images/kotlin_logo.png', 'Spring Boot', 'Active', 1),
    ('TypeScript', '/images/typescript_logo.png', 'Angular', 'Active', 1),
    ('C++', '/images/cpp_logo.png', 'Qt', 'Active', 1);

select * from TechStack;
desc TechStack;

-- -------------------------------------------------------TechType--------------------------------------------------------
CREATE TABLE TechType (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(100),
    CurStatus VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT
);

INSERT INTO TechType (TypeName, CurStatus, CreatorUser)
VALUES
    ('Frontend', 'Active', 1),
    ('Backend', 'Active', 1),
    ('Full Stack', 'Active', 1),
    ('MEARN Stack', 'Active', 1),
    ('MEAN Stack', 'Active', 1),
    ('Ethical Hacking', 'Active', 1);
select * from TechType;
desc TechType;

-- ----------------------------------------------------------Lab----------------------------------------------------------
CREATE TABLE Lab (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    Address VARCHAR(255),
    Status VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT
);

INSERT INTO Lab (Name, Location, Address, Status, CreatorUser)
VALUES
    ('BridgeLabz Mumbai', 'Mumbai', 'Malhotra Chembers, Gowandi', 'Active', 1),
    ('BridgeLabz Pune', 'Pune', '456 Innovation Avenue, Pune', 'Active', 1),
    ('BridgeLabz Bangalore', 'Bangalore', 'Sector 4, HSR Layout' ,'Active', 1),
    ('BridgeLabz Delhi', 'Delhi', '101 IT Park, Delhi', 'Active', 1);

select * from lab;
desc Lab;

-- ---------------------------------------------------LabThreshold-------------------------------------------------------
CREATE TABLE Lab_Threshold (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    LabId INT, 
    LabCapacity INT,
    LeadThreshold INT,
    IdeationEnggThreshold INT,
    BuddyEnggThreshold INT,
    Status VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    FOREIGN KEY (LabId) REFERENCES Lab(Id)
);

INSERT INTO Lab_Threshold (LabId, LabCapacity, LeadThreshold, IdeationEnggThreshold, BuddyEnggThreshold, Status, CreatorUser)
SELECT
    Id AS LabId,
    80 AS LabCapacity,
    14 AS LeadThreshold,
    18 AS IdeationEnggThreshold,
    26 AS BuddyEnggThreshold,
    'Active' AS Status,
    1 AS CreatorUser
FROM Lab
WHERE ID =4;

select * from Lab_Threshold;

desc Lab_Threshold;

-- ----------------------------------------------------MakerProgram------------------------------------------------------
CREATE TABLE Maker_Program (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ProgramName VARCHAR(100),
    ProgramType VARCHAR(50),
    ProgramLink VARCHAR(255),
    TechStackId INT,
    TechTypeId INT,
    IsProgramApproved BOOLEAN,
    Description TEXT,
    Status VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    FOREIGN KEY (TechStackId) REFERENCES TechStack(Id),
    FOREIGN KEY (TechTypeId) REFERENCES TechType(Id)
);
truncate Maker_Program;
INSERT INTO Maker_Program 
(
    ProgramName, ProgramType, ProgramLink, TechStackId, TechTypeId, IsProgramApproved, Description, Status, CreatorUser
)
VALUES
(
    'Java Bootcamp',
    'Full Satck',
    'https://www.bridgelabz-javabootcamp.com',
    1, 
    3, 
    true,
    'Join our coding program to senhance your skills and prepare for interviews!',
    'Active',
    1
),
(
    'Java Bootcamp',
    'Backend',
    'https://www.bridgelabz-javabackend.com',
    1, 
    2, 
    true,
    'Join our coding program to enhance your skills everyday at 10:00 am for 1 month!',
    'Active',
    1
),
(
    'Web development Bootcamp',
    'Frontend',
    'https://www.bridgelabz-webdevlopment.com',
    3, 
    1, 
    true,
    'Join our coding program to senhance your skills and get job',
    'Active',
    1
),
(
    'Spring Bootcamp',
    'Full Satck',
    'https://www.bridgelabz-javabootcamp.com',
    1, 
    3, 
    true,
    'Join our coding program to senhance your skills and make understandable live projects!',
    'Active',
    1
);

select * from maker_program;
desc Maker_Program;

-- --------------------------------------------------Mentor-------------------------------------------------------------- 
CREATE TABLE Mentor (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    MentorType VARCHAR(50),
    LabId INT, 
    Status VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    FOREIGN KEY (LabId) REFERENCES Lab(Id)
);
desc Mentor;

INSERT INTO Mentor
(Name, MentorType, LabId, Status, CreatorUser) VALUES
('Sunil', 'Lead', 1, 'Active', 1),('Venkat', 'Ideation', 1, 'Active', 1),('Shahzad', 'Ideation', 1, 'Active', 1),('Aishwarya', 'Buddy', 1, 'Inactive', 1),('Gunjan', 'Lead', 1, 'Active', 1),('Nagendra', 'Ideation', 1, 'Active', 1),
('Roshani', 'Ideation', 1, 'Active', 1),('Sudhakar', 'Lead', 1, 'Active', 1),('Rajeev', 'Lead', 2, 'Active', 1),('Nagaraju', 'Lead', 3, 'Active', 1),('Raghu', 'Ideation', 3, 'Active', 1),
('Anitha', 'Buddy', 3, 'Active', 1),('Prathamesh', 'Lead', 2, 'Active', 1),('Shreya', 'Ideation', 2, 'Active', 1),('Fatima', 'Buddy', 2, 'Active', 1);

update mentor set mentortype = 'support' where id =13;
select * from mentor;
-- --------------------------------------------------MentorIdeationMap---------------------------------------------------- 
CREATE TABLE Mentor_Ideation_Map (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ParentMentorId INT, 
    Mentor_Id INT,
    Status VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    FOREIGN KEY (ParentMentorId) REFERENCES Mentor(Id),
    FOREIGN KEY (Mentor_Id) REFERENCES Mentor(Id)
);

INSERT INTO Mentor_Ideation_Map (ParentMentorId, Mentor_Id, Status, CreatorUser) values
(1, 2, 'Active', 1),(1, 3, 'Active', 1),(1, 4, 'Inactive', 1), (5, 4, 'Inactive', 1), (5, 6, 'Active', 1),(9, 13, 'Active', 1), (9, 14, 'Active', 1), (9, 15, 'Active', 1),(10, 11, 'Active', 1),(10, 12, 'Active', 1);

select * from Mentor_Ideation_Map;

desc Mentor_Ideation_Map;

-- --------------------------------------------------MentorTechStack----------------------------------------------------- 
CREATE TABLE Mentor_Tech_Stack (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    MentorId INT,
    TechStackId INT, 
    Status VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    FOREIGN KEY (MentorId) REFERENCES Mentor(Id),
    FOREIGN KEY (TechStackId) REFERENCES TechStack(Id)
);

INSERT INTO Mentor_Tech_Stack (MentorId, TechStackId, Status, CreatorUser)values
(1, 1, 'Active', 1),(2, 1, 'Active', 1),(3, 1, 'Active', 1),(5, 3, 'Active', 1),(5, 9, 'Active', 1),(1, 1, 'Active', 1);

select * from Mentor_Tech_Stack;
desc Mentor_Tech_Stack;

-- --------------------------------------------------CompanyRequirement--------------------------------------------------
 
CREATE TABLE Company_Requirement (
    id INT AUTO_INCREMENT PRIMARY KEY,
    company_id INT,
    requested_month DATE,
    city VARCHAR(100),
    is_doc_verification BOOLEAN,
    requirement_doc_path VARCHAR(255),
    no_of_engg INT,
    tech_stack_id INT,
    tech_type_id INT,
    maker_program_id INT, 
    lead_id INT, 
    ideation_engg_id INT, 
    buddy_engg_id INT, 
    special_remark TEXT,
    Status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user INT,
    FOREIGN KEY (company_id) REFERENCES Company(Id) on delete cascade on update cascade,
    FOREIGN KEY (tech_stack_id) REFERENCES TechStack(Id) on delete cascade on update cascade,
    FOREIGN KEY (tech_type_id) REFERENCES TechType(Id) on delete cascade on update cascade,
    FOREIGN KEY (maker_program_id) REFERENCES Maker_Program(Id) on delete cascade on update cascade,
    FOREIGN KEY (lead_id) REFERENCES Mentor(Id) on delete cascade on update cascade,
    FOREIGN KEY (ideation_engg_id) REFERENCES Mentor(Id) on delete cascade on update cascade, 
    FOREIGN KEY (buddy_engg_id) REFERENCES Mentor(Id) on delete cascade on update cascade
);


INSERT INTO Company_Requirement (
    company_id, requested_month, city,is_doc_verification, requirement_doc_path, no_of_engg, tech_stack_id, tech_type_id, maker_program_id,
    lead_id, ideation_engg_id, buddy_engg_id, special_remark, Status, creator_user
)
VALUES
    (1, '2023-09-20', 'Mumbai', true, '/docs/QKrequirement_doc.pdf', 10, 1, 1, 1, 1, 3, 4, 'Excellent Communication', 'Active', 1),
	(2, '2023-11-01', 'Mumbai', true, '/docs/ABCrequirement_doc.pdf', 2, 1, 1, 1, 1, 3, 4, 'Good', 'Active', 1);
  
 Update Company_Requirement
SET city = 'Pune'
Where id in (2);

  
 select * from  Company_Requirement;

desc Company_Requirement;

-- -------------------------------------------------CandidateStackAssignment---------------------------------------------
CREATE TABLE Candidate_Stack_Assignment (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    RequirementId INT,
    CandidateId VARCHAR(20),
    AssignDate DATE,
    CompleteDate DATE,
    Status VARCHAR(50),
    CreatorStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatorUser INT,
    FOREIGN KEY (RequirementId) REFERENCES Company_Requirement(Id),
    FOREIGN KEY (CandidateId) REFERENCES FellowshipCandidate(CandidateId)
);

INSERT INTO Candidate_Stack_Assignment (
    RequirementId,
    CandidateId,
    AssignDate,
    CompleteDate,
    Status,
    CreatorUser
) values
(
1,
'CIC00001',
'2023-10-17',
null,
'Assigned',
1
),
(
1,
'CIC00003',
'2023-10-14',
null,
'Assigned',
1
),
(
1,
'CIC00004',
'2023-11-11',
null,
'Assigned',
1
),
(
1,
'CIC00005',
'2023-10-14',
null,
'Assigned',
1
),
(
1,
'CIC00006',
'2023-09-27',
null,
'Assigned',
1
),
(
1,
'CIC00007',
'2023-10-16',
null,
'Assigned',
1
),
(
1,
'CIC00008',
'2023-09-28',
null,
'Assigned',
1
),
(
1,
'CIC00001',
'2023-09-27',
null,
'Assigned',
1
);

desc Candidate_Stack_Assignment;
show tables;