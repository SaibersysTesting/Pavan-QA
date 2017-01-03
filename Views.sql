

  DECLARE @document varchar(64);  
SELECT @document = 'Reflectors are vital safety' +  
                   ' components of your bicycle.';  
SELECT CHARINDEX('bicycle', @document);  
GO

Create Function Ufn_NumberofDaysBTW
(
@FirstDate Date,
@SecondDate Date
)
Returns Int
As
Begin
Declare @Result Int
Select @Result = DATEDIFF(DD,@SecondDate,@FirstDate)
Return @Result
End

Select [dbo].[Ufn_NumberofDaysBTW] ('04/21/2011','04/20/2010') As BtwDays

Alter Function Ufn_NumberofDaysBTW
(
@FirstDate Date,
@SecondDate Date
)
Returns Int
As
Begin
Declare @Result Int
Select @Result = DATEDIFF(MM,@SecondDate,@FirstDate)
Return @Result
End
Select [dbo].[Ufn_NumberofDaysBTW] ('04/21/2011','04/20/2010') As BtwDays

Alter Function Ufn_NumberofDaysBTW
(
@FirstDate Date,
@SecondDate Date
)
Returns Int
As
Begin
Declare @Result Int
Select @Result = DATEDIFF(YY,@SecondDate,@FirstDate)
Return @Result
End

Select [dbo].[Ufn_NumberofDaysBTW] ('04/21/2011','04/20/2010') As BtwDays


Create Function Ufn_AgeInYears
(
@Date Date
)
Returns Int
As
Begin
Declare @Result Int
Select @Result= DATEDIFF(YY,@Date,GETDATE())
return @Result
End
Select [dbo].[Ufn_AgeInYears] ('04/21/2011','04/20/2010') As Age