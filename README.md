# SQLServer-INITCAP

## Overview
The `INITCAP` function is a user-defined function (UDF) in SQL Server that transforms any given string such that the first character is in uppercase and all other characters are in lowercase. This function is useful in data formatting, especially for names or titles.

## Features
- Converts the first character of the input string to uppercase.
- Converts the rest of the string to lowercase.
- Handles strings up to MAX characters in length.

## Prerequisites
- Microsoft SQL Server

## Installation
1. Open your SQL Server Management Studio (SSMS).
2. Connect to your database engine.
3. Select the database where you wish to create the function. Replace `[SCHEMA]` with your database name in the script.
4. Execute the script provided to create the `INITCAP` function.

## Usage
Once the function is created in your database, you can use it as follows:

```sql
SELECT dbo.INITCAP('yourString') as CapitalizedString;
