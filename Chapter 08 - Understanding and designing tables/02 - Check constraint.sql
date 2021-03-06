--##############################################################################
--
-- SAMPLE SCRIPTS TO ACCOMPANY "SQL SERVER 2017 ADMINISTRATION INSIDE OUT"
--
-- © 2018 MICROSOFT PRESS
--
--##############################################################################
--
-- CHAPTER 8: UNDERSTANDING AND DESIGNING TABLES
-- T-SQL SAMPLE 2
--

-- Add check contraint on WideWorldImporters.Sales.Invoices
USE [WideWorldImporters];
GO

ALTER TABLE Sales.Invoices WITH CHECK
	ADD CONSTRAINT CH_Comments CHECK (LastEditedWhen < '2018-02-01' OR Comments IS NOT NULL);