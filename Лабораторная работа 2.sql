
  SELECT * FROM ���������;
   
      SELECT ���, ����_��������
   FROM ���������;
   
      SELECT DISTINCT �������������
   FROM ���������;
   
      SELECT * FROM ���������
   ORDER BY ���_����������_������ ASC;
   
      SELECT TOP 5 * FROM ���������;
   
      SELECT * FROM ���������
   ORDER BY ���
   OFFSET 2 ROWS
   FETCH NEXT 5 ROWS ONLY;
   
      SELECT ���, ����_��������, 
          DATEDIFF(YEAR, ����_��������, GETDATE()) AS �������
   FROM ���������;
   