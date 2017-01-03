--WAF which will display of Greater of 2 numbers
Create Function Ufn_Greaterof2Numbers
(
@FirstNumber Int,
@SecondNumber Int
)
Returns Int
As
Begin
Declare @Result Int--Variable
If (@FirstNumber>@SecondNumber)
Set @Result=@FirstNumber
Else
Set @Result=@SecondNumber
Return (@result)
End
Select dbo.Ufn_Greaterof2Numbers(30,40)

--WAF Which Will Take Date As a Paramater And Return First Date Of Month

--WAF which will take date as a parameter and return first date of the month.
Create Function ufn_FirstDayofMonth
(
@FirstDate Date
)
Returns Date
AS
Begin
Declare @Result Date,@Day int
Select @Day=Day(@FirstDate)-1--
Select @Result=DateAdd(dd,-@day,@FirstDate)
Return(@result)
End
Select dbo.ufn_FirstDayofMonth('01/16/2016')

--WAF Which Will Take Date As A Parameter And Returns Last Date of Month

Alter Function ufn_LastDayofMonth
(
@FirstDate Date --12/16/2016
)
Returns Date
AS
Begin
Declare @Result Date,@Day int
Select @Day=Day(@FirstDate)--16
Select @Result=DateAdd(mm,1,@FirstDate)--01/17/2017
Select @Result=Dateadd(dd,-@day,@Result)
Return(@result)
End


Select dbo.ufn_LastDayofMonth('02/16/2017')
Select dbo.ufn_LastDayofMonth('02/16/2016')

