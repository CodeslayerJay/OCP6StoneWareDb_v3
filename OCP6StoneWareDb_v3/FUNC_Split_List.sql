--========================================
-- FUNCTION TO SPLIT A STRING OF KEYWORDS
--=========================================

CREATE FUNCTION dbo.split_list ( @keywords VARCHAR(MAX) )
RETURNS
 @returnList TABLE ([Keyword] [nvarchar] (500))
AS
BEGIN

 DECLARE @keyword NVARCHAR(255)
 DECLARE @pos INT

 WHILE CHARINDEX(',', @keywords) > 0
 BEGIN
  SELECT @pos  = CHARINDEX(',', @keywords)  
  SELECT @keyword = SUBSTRING(@keywords, 1, @pos-1)

  INSERT INTO @returnList 
  SELECT @keyword

  SELECT @keywords = SUBSTRING(@keywords, @pos+1, LEN(@keywords)-@pos)
 END

 INSERT INTO @returnList
 SELECT @keywords

 RETURN
END