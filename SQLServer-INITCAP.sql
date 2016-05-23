USE [SCHEMA]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER function [dbo].[INITCAP](@string varchar(30))
returns varchar(2000)
as
begin
    return UPPER(LEFT(@string,1)) + LOWER(RIGHT(@string, LEN(@string) -1))
end
