--select top 10 * [dbo].[tblCustomer]
--select top 10 * [dbo].[tblInventoryItems]
--select top 10 * [dbo].[tblInventoryCategory]
--select top 10 * [dbo].[tblOrder]
select intOrderID as [Transaction ID],dteOrderDate as [Date],a.txtCustomerCode,
 CASE WHEN b.txtSex = 'M' then 'Male'
	  WHEN b.txtSex = 'F' then 'Female'
 END as [Gender], datediff(Year,getdate(),b.dteDOB) as [Age],d.txtItemCategoryName as [Product Category], a.txtQty as [Quantity],
 c.numUnitPrice as [Price per Unit]
 from [dbo].[tblOrder] a, [dbo].[tblCustomer] b, 
	  [dbo].[tblInventoryItems] c, [dbo].[tblInventoryCategory] d 
where 
a.txtCustomerCode = b.txtCustomerCode and
a.intInventoryID =  c.intInventoryID and
c.intInventoryCategoryID = d.intInventoryCategoryID and 
Year(dteOrderDate) > 2022 




