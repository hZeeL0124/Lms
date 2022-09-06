use lms;
create table employee_lms(
	ID int NOT NULL IDENTITY(1,1),
	EmployeeID int PRIMARY KEY NOT NULL,
	Name varchar(100) NOT NULL,
	EmpLevel int NOT NULL,
	Email varchar(100) NOT NULL,
	Phone varchar(100) NOT NULL,	
	ManagerID int
	/*CONSTRAINT FK_ManagerID FOREIGN KEY(ManagerID)
	REFERENCES employee_lms(EmployeeID)*/
);

insert into employee_lms values(1,'Raj',1,'r@gmail.com',8498659,1)
insert into employee_lms values(2,'jiny',2,'j@gmail.com',84949849,1)
insert into employee_lms values(3,'sony',3,'s@gmail.com',556446,2)
insert into employee_lms values(4,'dishi',3,'dishi@gmail.com',54568966,2);
insert into employee_lms values(5,'ki',3,'ki@gmail.com',5146549861,5);


select *from employee_lms;

drop table employee_lms;

create table leave_lms(
	LID int NOT NULL IDENTITY(1,1),
	EmployeeID int NOT NULL CONSTRAINT FK_EmployeeID FOREIGN KEY(EmployeeID) REFERENCES employee_lms(EmployeeID),
	EmplLevel int NOT NULL,
	ManagerID int NOT NULL,
	LeavesInHand int NOT NULL,
	Leave_Start date NOT NULL,
	Leave_End date NOT NULL,
	Leave_type varchar(100) NOT NULL,
	Reason varchar(100),
	Leave_status varchar(20)
	PRIMARY KEY (LID)
);
select *from leave_lms;

insert into leave_lms values(1, 1, 1, 10, '2022-08-10', '2022-08-15', 'vacation', 'Goa Trip', 'pending')
insert into leave_lms values(2, 2, 2, 10, '2022-08-12', '2022-08-20', 'vacation', 'Goa Trip', 'pending')
insert into leave_lms values(3, 3, 3, 10, '2022-08-17', '2022-08-22', 'vacation', 'Goa Trip', 'pending')

drop table leave_lms;
