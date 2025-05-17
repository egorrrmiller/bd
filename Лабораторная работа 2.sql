
  SELECT * FROM Академики;
   
      SELECT ФИО, Дата_рождения
   FROM Академики;
   
      SELECT DISTINCT Специализация
   FROM Академики;
   
      SELECT * FROM Академики
   ORDER BY Год_присвоения_звания ASC;
   
      SELECT TOP 5 * FROM Академики;
   
      SELECT * FROM Академики
   ORDER BY ФИО
   OFFSET 2 ROWS
   FETCH NEXT 5 ROWS ONLY;
   
      SELECT ФИО, Дата_рождения, 
          DATEDIFF(YEAR, Дата_рождения, GETDATE()) AS Возраст
   FROM Академики;
   