CREATE TABLE ����������_���������� (
   ID INT PRIMARY KEY IDENTITY(1,1),
   ��� VARCHAR(30) NOT NULL DEFAULT '������������� ����������',
  ����_�������� DATETIME DEFAULT GETDATE()
);

CREATE TABLE ������1_���������� (
   ���_������ INT PRIMARY KEY CHECK (���_������ BETWEEN 1 AND 999),
   �������� VARCHAR(50) NOT NULL,
   ��������� VARCHAR(20) NOT NULL,
   ��������� BIGINT CHECK (��������� > 0),
   ����_����������_�_��� DATE NULL
);


CREATE TABLE ��������_���������� (
   ID INT PRIMARY KEY IDENTITY(10,5),
   ��� VARCHAR(50) NOT NULL,
   ����� VARCHAR(30) DEFAULT '������',
   ��������� VARCHAR(30),
   �����_�������� VARCHAR(100),
   CONSTRAINT UQ_Animal_ID UNIQUE (ID)
);

INSERT INTO ����������_���������� (���) 
VALUES ('��������������� ��������');

INSERT INTO ������1_���������� 
VALUES (1, '������', '����', 125800000, '1956-12-18');

INSERT INTO ������1_����������
VALUES (1000, '����', '������', -100, NULL);

CREATE TABLE �����_���������� (
  ID INT PRIMARY KEY,
   �������� NVARCHAR(40) NOT NULL,
   ����� NVARCHAR(30) DEFAULT N'����������',
   ��������� NVARCHAR(30) NULL,
   ����� NVARCHAR(100) NULL,
   CONSTRAINT UQ_�����_ID UNIQUE (ID)
);