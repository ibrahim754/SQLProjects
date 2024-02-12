
	-- Clear the cache
	DBCC FREEPROCCACHE
	DBCC FREEPROCCACHE

	use NorthWind
	go

	select * ,  
	 dbo.Calculate(od.UnitPrice , od.Quantity,od.Discount) As Subtotoal
	from [Order Details] as od	
	where od.OrderID = 10250;
 



	-- Creat Scalar-Function 
	Create or Alter Function dbo.Calculate(@uintPrice money,@quantity smallint, @discount real)

	Returns Money 
	As 
	Begin 

	Declare @subTotal money;
	select @subTotal = CONVERT( money, (1 - @discount ) * @uintPrice * @quantity ,2);
	return @subTotal;
	End 
	Go 
	-- End of the function

	-- Table_values Funcation

 CREATE OR ALTER PROCEDURE Calc
    @OrderId INT
AS
BEGIN
    SELECT *,  
        dbo.Calculate(od.UnitPrice, od.Quantity, od.Discount) AS Subtotal
    FROM [Order Details] AS od
    WHERE od.OrderID = @OrderId;
END;

	 







	set statistics time,io on;  -- turn on the calculation of the execution time
	set statistics time,io off; -- turn off the calculation of the execution time

	-- elabsed time = total time from starting execution time till the records return back 
	--  