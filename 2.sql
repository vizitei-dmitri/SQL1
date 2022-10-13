CREATE TABLE Stud
(
    Id SERIAL PRIMARY KEY,
    Student_Name VARCHAR(30) NOT NULL,
    Student_Surename VARCHAR(30) NOT NULL,
    Student_class_in_school VARCHAR (1) REFERENCES Clas (ID)
    
);

CREATE TABLE Clas
(
	ID SERIAL PRIMARY KEY,
	class_in_school VARCHAR (1) REFERENCES Teacher (ID)
);

CREATE TABLE Teacher
(
	ID SERIAL PRIMARY KEY,
	teacher_name VARCHAR (30),
	class_to_teach VARCHAR (1) NOT NULL,
	subject_to_teach VARCHAR (30) REFERENCES Subject (ID)
);

CREATE TABLE Subject
(
	ID SERIAL PRIMARY KEY,
	subject_in_school VARCHAR (30) NOT NULL
);

CREATE TABLE Subject_to_Teacher
(
	Teacher_id SERIAL REFERENCES Teacher(ID),
	Subject_id SERIAl REFERENCES Subject(ID)
);

INSERT INTO Teacher(class_to_teach, teacher_name)
VALUES ('A', 'Jade'), ('B','Ann'), ('C', 'Mr White');

INSERT INTO Subject(subject_in_school)
VALUES ('biology'), ('math'), ('chemistry');

INSERT INTO Stud (Student_Name, Student_Surename)
VALUES
('Петя', 'Петров'),
('Гоша', 'Гончаров'),
('Петручио', 'Афтасенко'),
('Алёша', 'Качерышкин'),
('Дмитрий', 'НеПетров'),
('Петя', 'Покрышкин');

SELECT * FROM Stud WHERE subject_in_school = 'biology';