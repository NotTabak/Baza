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


-- Wynik sprzedaży za ostatnią dobę z podziałem na:
-- sklep i jego status
-- oraz status transakcji
select
s.str_name,
s.str_status,
s.str_code,
s.str_adress,
s.str_square,
sum(t.trn_net) as sum_net,
sum(t.trn_tax) as sum_tax,
sum(t.trn_gross) as sum_gross,
cast(t.trn_created_at as Date) as trunc_trn_created_at,
t.trn_status,
sum(td.trd_qty_ordered) as sum_qty_ordered,
sum(td.trd_qty_sent) as sum_qty_sent
from transactions t
join transaction_details td on td.trd_trn_id = t.trn_id 
join products p on td.trd_prd_id = p.prd_id
join stores s on s.str_id = t.trn_str_id
WHERE t.trn_created_at >= getDate()-1
group by cast(t.trn_created_at as Date), 
t.trn_status,
s.str_name,
s.str_status,
s.str_code,
s.str_adress,
s.str_square
order by 1, 2


-- Wyniki sprzedaż asortymentu z podziałem na typ produktu,
-- z uwzględnieniem statusu transakcji 
select td.trd_product_type,
t.trn_status,
cast(t.trn_created_at as Date) as trunc_trn_created_at,
sum(td.trd_qty_ordered) as sum_qty_ordered,
sum(td.trd_qty_sent) as sum_qty_sent,
sum(t.trn_net) as sum_net,
sum(t.trn_tax) as sum_tax,
sum(t.trn_gross) as sum_gross
from transactions t
join transaction_details td on td.trd_trn_id = t.trn_id 
WHERE t.trn_created_at >= getDate()-1
group by t.trn_status,
td.trd_product_type,
cast(t.trn_created_at as Date)
order by 1, 2, 3


-- urodziny klientów 
select
month(c.cst_birthday_date) as customer_birthday_month,
day(c.cst_birthday_date) as customer_birthday_day,
DATEDIFF(YEAR, c.cst_birthday_date, getDate()) as customer_age,
c.*
from customers c
where month(c.cst_birthday_date) > month(getdate())
OR (month(c.cst_birthday_date) = month(getdate())
and day(c.cst_birthday_date) >= day(getdate()));