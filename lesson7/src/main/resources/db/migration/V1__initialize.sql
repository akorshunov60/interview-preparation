create table students (
    id                      bigserial primary key,
    name                    varchar(30) not null,
    age                     bigint not null
);

insert into students (name, age)
values
    ('STUDENT_01', 18),
    ('STUDENT_02', 20),
    ('STUDENT_03', 25),
    ('STUDENT_04', 33),
    ('STUDENT_05', 45),
    ('STUDENT_06', 22),
    ('STUDENT_07', 42),
    ('STUDENT_08', 20),
    ('STUDENT_09', 17),
    ('STUDENT_10', 19);

