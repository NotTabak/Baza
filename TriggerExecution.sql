/****** Script for SelectTopNRows command from SSMS  ******/

-- Update statusu UserID = 1 (Status: 0 - inactive, 1 - active, 2 - Blocked)
update [Ecom_Shop].[dbo].[users]
set usr_status = 2
where usr_id = 1;

-- Aktualny status, wszystcy user'zy
select * FROM [Ecom_Shop].[dbo].[users];
go

  -- Historia zmian statusu
SELECT TOP (1000) [uhi_id]
,[uhi_usr_id]
,[uhi_usr_usr_id]
,[uhi_usr_email]
,[uhi_usr_status]
,[uhi_usr_created_at]
,[uhi_usr_updated_at]
,[uhi_usr_fristname]
,[uhi_usr_lastname]
,[uhi_updated_by]
FROM [Ecom_Shop].[dbo].[users_history]
go