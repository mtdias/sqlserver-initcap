USE [SCHEMA]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[INITCAP](@string varchar(MAX))
RETURNS varchar(MAX)
AS
BEGIN
    -- Check for NULL or empty input
    IF @string IS NULL OR @string = ''
        RETURN @string

    -- Trim the string to remove leading and trailing spaces
    SET @string = LTRIM(RTRIM(@string))

    -- Convert the first character to uppercase and the rest to lowercase
    RETURN UPPER(LEFT(@string, 1)) + LOWER(SUBSTRING(@string, 2, LEN(@string)))
END
