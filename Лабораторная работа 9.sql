CREATE TABLE Управление (
   ID INT PRIMARY KEY IDENTITY(1,1),
   Вид VARCHAR(30) NOT NULL DEFAULT 'Президентская республика',
  Дата_создания DATETIME DEFAULT GETDATE()
);

CREATE TABLE Страны1 (
   Код_страны INT PRIMARY KEY CHECK (Код_страны BETWEEN 1 AND 999),
   Название VARCHAR(50) NOT NULL,
   Континент VARCHAR(20) NOT NULL,
   Население BIGINT CHECK (Население > 0),
   Дата_вступления_в_ООН DATE NULL
);


CREATE TABLE Животные (
   ID INT PRIMARY KEY IDENTITY(10,5),
   Вид VARCHAR(50) NOT NULL,
   Отряд VARCHAR(30) DEFAULT 'Хищные',
   Семейство VARCHAR(30),
   Ареал_обитания VARCHAR(100),
   CONSTRAINT UQ_Animal_ID UNIQUE (ID)
);

INSERT INTO Управление (Вид) 
VALUES ('Конституционная монархия');

INSERT INTO Страны1
VALUES (1, 'Япония', 'Азия', 125800000, '1956-12-18');

INSERT INTO Страны1
VALUES (1000, 'Русь', 'Европа', -100, NULL);

CREATE TABLE Цветы (
  ID INT PRIMARY KEY,
   Название NVARCHAR(40) NOT NULL,
   Класс NVARCHAR(30) DEFAULT N'Двудольные',
   Семейство NVARCHAR(30) NULL,
   Ареал NVARCHAR(100) NULL,
   CONSTRAINT UQ_Цветы_ID UNIQUE (ID)
);