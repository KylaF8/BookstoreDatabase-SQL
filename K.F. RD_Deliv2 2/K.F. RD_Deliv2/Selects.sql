-- This will show all the ratings that are 6 or below, this way the employees are able to keep track with their services and how they need to react to them.
SELECT  
  First_name,
  Last_name,
  Customer_number
FROM Customer
WHERE 
  Customer_satisfication <= 6;
  
  
  -- This will show all the employees that work as Sales Representatives, to keep track of employees in different positions.
SELECT  
  First_name,
  Last_name,
  Employee_ID
FROM
  Employee
WHERE
  Empl_role = 'Sales Rep';
  
  -- This will select and arrange the orders ID and invoice numbers in ascending order, helping employees keep them in order.
SELECT 
Order_ID,
Invoice_number,
Order_description
FROM 
Orders
WHERE 
Order_date
ORDER BY Order_ID AND Invoice_number ASC;
  
  -- This will select the Book copies ID of the copies that have less than 20, therefore if it gets below this level employees will know to order more stock.
  SELECT
  Book_copy_ID
  FROM
  Book_Copy
  WHERE
  Amount_of_copies <= 20;
  
  -- This is just to join the order and receipt together for employees to store the receipt and order number together.
  SELECT 
   o.Invoice_number,
   o.Payment_type,
   o.Order_date,
   r.Receipt_number,
   r.Employee_who_served_you
   FROM Orders o
   LEFT JOIN Receipt r ON o.Order_date = r.Date_issued;
   
   -- This is just to join the Book ID and Book together for employees to store them together.
   SELECT
   b.Title,
   b.Author,
   b.Genre,
   bk.Book_copy_ID,
   bk.Amount_of_copies
   FROM Book_Copy bk
   LEFT JOIN Book b ON b.Book_ID = bk.fk_bk
   WHERE Amount_of_copies <= 30;
   
  