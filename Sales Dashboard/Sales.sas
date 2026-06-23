libname Yuvika '/home/u64267972/Yuvika';

proc import datafile="/home/u64267972/Yuvika/sales_dataset_productspurchased.csv"
     out=Yuvika.sales1
     dbms=csv
     replace;
     getnames=yes;
     run;

proc print data= Yuvika.sales1;
run;

     
proc import datafile="/home/u64267972/Yuvika/sales_dataset_customers.csv"
      out=Yuvika.sales2
     dbms=csv
     replace;
     getnames=yes;
     run;
 
proc print data=Yuvika.sales2;
run;

     
proc import datafile="/home/u64267972/Yuvika/sales_dataset_invoices.csv"
   out=Yuvika.sales3
     dbms=csv
     replace;
     getnames=yes;
     run;

proc print data=Yuvika.sales3;
run;


proc import datafile="/home/u64267972/Yuvika/sales_dataset_orders.csv"
      out=Yuvika.sales4
     dbms=csv
     replace;
     getnames=yes;
     run;
     
proc print data=Yuvika.sales4;
run;

     
proc import datafile="/home/u64267972/Yuvika/sales_dataset_payments.csv"
   out=Yuvika.sales5
     dbms=csv
     replace;
     getnames=yes;
     run;

proc print data=Yuvika.sales5;
run;


proc import datafile="/home/u64267972/Yuvika/shipments.csv"
out=Yuvika.sales6
     dbms=csv
     replace;
     getnames=yes;
     run;

proc print data=Yuvika.sales6;
run;

     
proc import datafile="/home/u64267972/Yuvika/returns.csv"
out=Yuvika.sales7
     dbms=csv
     replace;
     getnames=yes;
     run;
proc print data=Yuvika.sales7;
run;

     
proc import datafile="/home/u64267972/Yuvika/customer_feedback.csv"
out=Yuvika.sales8
     dbms=csv
     replace;
     getnames=yes;
     run;
proc print data=Yuvika.sales8;
run;


proc import datafile="/home/u64267972/Yuvika/customer_service_calls.csv" 
out=Yuvika.sales9
     dbms=csv
     replace;
     getnames=yes;
     run;
proc print data=Yuvika.sales9;
run;


proc import datafile="/home/u64267972/Yuvika/loyalty_program.csv" 
out=Yuvika.sales10
     dbms=csv
     replace;
     getnames=yes;
     run;
proc print data=Yuvika.sales10;
run;

     
proc import datafile="/home/u64267972/Yuvika/promotions_used.csv" 
out=Yuvika.sales11
     dbms=csv
     replace;
     getnames=yes;
     run;
proc print data= Yuvika.sales11;
run;


proc import datafile="/home/u64267972/Yuvika/web_activity.csv" 
out=Yuvika.sales12
     dbms=csv
     replace;
     getnames=yes;
     run;
proc print data=Yuvika.sales12;
run;


proc import datafile="/home/u64267972/Yuvika/wishlists.csv" 
out=Yuvika.sales13
     dbms=csv
     replace;
     getnames=yes;
     run;
proc print data=Yuvika.sales13;
run;
   
proc import datafile="/home/u64267972/Yuvika/customer_behavior.csv" 
out=Yuvika.sales14
     dbms=csv
     replace;
     getnames=yes;
     run;
proc print data=Yuvika.sales14;
run;

    
proc import datafile="/home/u64267972/Yuvika/business_accounts.csv" 
out=Yuvika.sales15
     dbms=csv
     replace;
     getnames=yes;
     run;

libname Yuvika '/home/u64267972/Yuvika';

proc print data= Yuvika.sales15;
run;

proc means data=Yuvika.sales15;
run;

proc sort data=YUVIKA.sales15 nodupkey out=yuvika.sales_test;
by CustomerID;
run;

proc print data=Yuvika.sales14;
run;

proc means data=Yuvika.sales14;
run;

proc sort data=Yuvika.sales14 noduprecs out=sales14_nodup dupout=dupes_all;
  by _all_;
run;

proc print data=Yuvika.sales13;
run;

proc means data=Yuvika.sales13;
run;
proc sort data=Yuvika.sales13 noduprecs out=sales13_nodup dupout=dupes_all;
  by _all_;
run;

proc print data=Yuvika.sales12;
run;

proc means data=Yuvika.sales12;
run;

proc sort data=Yuvika.sales12 nodupkey out=sales12_nodup dupout=dupes_all;
by _all_;
run;

proc print data=Yuvika.sales11;
run;

proc means data=Yuvika.sales11;
run;

proc sort data=Yuvika.sales11 nodupkey out=sales11_nodup dupout=dupes_all;
by _all_;
run;


proc print data=Yuvika.sales10;
run;

proc means data=Yuvika.sales10;
run;

proc sort data=Yuvika.sales10 nodupkey out=sales10_nodup dupout=dupes_all;
by _all_;
run;


proc print data=Yuvika.sales9;
run;

proc means data=Yuvika.sales9;
run;

proc sort data=Yuvika.sales9 nodupkey out=sales9_nodup dupout=dupes_all;
by _all_;
run;



proc print data=Yuvika.sales8;
run;

proc means data=Yuvika.sales8;
run;

proc sort data=Yuvika.sales8 nodupkey out=sales8_nodup dupout=dupes_all;
by _all_;
run;


proc print data=Yuvika.sales7;
run;

proc means data=Yuvika.sales7;
run;

proc sort data=Yuvika.sales7 nodupkey out=sales7_nodup dupout=dupes_all;
by _all_;
run;


proc print data=Yuvika.sales6;
run;

proc means data=Yuvika.sales6;
run;

proc sort data=Yuvika.sales6 nodupkey out=sales6_nodup dupout=dupes_all;
by _all_;
run;


proc print data=Yuvika.sales5;
run;

proc means data=Yuvika.sales5;
run;

proc sort data=Yuvika.sales5 nodupkey out=sales5_nodup dupout=dupes_all;
by _all_;
run;


proc print data=Yuvika.sales4;
run;

proc means data=Yuvika.sales4;
run;

proc sort data=Yuvika.sales4 nodupkey out=sales4_nodup dupout=dupes_all;
by _all_;
run;


proc print data=Yuvika.sales3;
run;

proc means data=Yuvika.sales3;
run;

proc sort data=Yuvika.sales3 nodupkey out=sales3_nodup dupout=dupes_all;
by _all_;
run;


proc print data=Yuvika.sales2;
run;

proc means data=Yuvika.sales2;
run;

proc sort data=Yuvika.sales2 nodupkey out=sales2_nodup dupout=dupes_all;
by _all_;
run;


proc print data=Yuvika.sales1;
run;

proc means data=Yuvika.sales1;
run;

proc sort data=Yuvika.sales1 nodupkey out=sales1_nodup dupout=dupes_all;
by _all_;
run;

proc sort data=Yuvika.sales1;
by CustomerID;
run;

proc sort data=Yuvika.sales2;
by CustomerID;
run;

proc sort data=Yuvika.sales3;
by CustomerID;
run;

proc sort data=Yuvika.sales4;
by CustomerID;
run;

proc sort data=Yuvika.sales5;
by CustomerID;
run;

proc sort data=Yuvika.sales6;
by CustomerID;
run;

proc sort data=Yuvika.sales7;
by CustomerID;
run;

proc sort data=Yuvika.sales8;
by CustomerID;
run;

proc sort data=Yuvika.sales9;
by CustomerID;
run;

proc sort data=Yuvika.sales10;
by CustomerID;
run;

proc sort data=Yuvika.sales11;
by CustomerID;
run;

proc sort data=Yuvika.sales12;
by CustomerID;
run;

proc sort data=Yuvika.sales13;
by CustomerID;
run;

proc sort data=Yuvika.sales14;
by CustomerID;
run;

proc sort data=Yuvika.sales15;
by CustomerID;
run;

data merged_data;
merge Yuvika.sales1 Yuvika.sales2 Yuvika.sales3 Yuvika.sales4 
Yuvika.sales5 Yuvika.sales6 Yuvika.sales7 Yuvika.sales8
Yuvika.sales9 Yuvika.sales10 Yuvika.sales11 Yuvika.sales12 
Yuvika.sales13 Yuvika.sales14 Yuvika.sales15;
by CustomerID;
run;

proc print data=merged_data;
run;

proc sql;
  create table FinalDataset as
  select 
    c.CustomerID,
    c.FullName,
    c.Gender,
    c.Country,
    o.OrderID,
    o.OrderDate,
    o.OrderAmount,
    o.OrderStatus,
    i.InvoiceID,
    i.TotalAmount,
    i.PaymentStatus,
    p.PaymentID,
    p.Amount as PaymentAmount,
    pp.ProductID,
    pp.ProductName,
    pp.Quantity,
    pp.UnitPrice,
    s.ShipmentID,
    s.ShippingStatus,
    f.FeedbackID,
    f.Rating,
    lp.ProgramName,
    lp.TierLevel,
    pr.PromoCode,
    pr.DiscountAmount,
    r.ReturnID,
    r.ReturnStatus,
    sc.CallID,
    sc.IssueCategory,
    cb.AverageSpend,
    ba.CompanyName
  from Yuvika.sales2 as c
  left join Yuvika.sales4 as o  on c.CustomerID = o.CustomerID
  left join Yuvika.sales3 as i on o.OrderID = i.OrderID
  left join Yuvika.sales5 as p on c.CustomerID = p.CustomerID  /* Assuming payment is by customer */
  left join Yuvika.sales1 as pp on o.OrderID = pp.OrderID and c.CustomerID = pp.CustomerID
  left join Yuvika.sales6 as s on o.OrderID = s.OrderID
  left join Yuvika.sales8 as f on o.OrderID = f.OrderID and pp.ProductID = f.ProductID
  left join Yuvika.sales10 as lp on c.CustomerID = lp.CustomerID
  left join Yuvika.sales11 as pr on o.OrderID = pr.OrderID and c.CustomerID = pr.CustomerID
  left join Yuvika.sales7 as r on o.OrderID = r.OrderID and pp.ProductID = r.ProductID
  left join Yuvika.sales9 as sc on c.CustomerID = sc.CustomerID
  left join Yuvika.sales14 as cb on c.CustomerID = cb.CustomerID
  left join Yuvika.sales15 as ba on c.CustomerID = ba.CustomerID
  ;
quit;


proc sql;
  create table FinalDataset as
  select 
    c.CustomerID,
    c.FullName,
    c.Gender,
    c.Country,

    o.OrderID,
    o.OrderDate,
    o.OrderAmount,
    o.OrderStatus,

    i.InvoiceID,
    i.TotalAmount,
    i.PaymentStatus,

    p.PaymentID,
    p.Amount as PaymentAmount,

    pp.ProductID,
    pp.ProductName,
    pp.Quantity,
    pp.UnitPrice,

    s.ShipmentID,
    s.ShippingStatus,

    f.FeedbackID,
    f.Rating,

    lp.ProgramName,
    lp.TierLevel,

    pr.PromoCode,
    pr.DiscountAmount,

    r.ReturnID,
    r.ReturnStatus,

    sc.CallID,
    sc.IssueCategory,

    cb.AverageSpend,
    ba.CompanyName

  from Yuvika.sales2 as c
  inner join Yuvika.sales4 as o  on c.CustomerID = o.CustomerID
  inner join Yuvika.sales3 as i on o.OrderID = i.OrderID
  inner join Yuvika.sales5 as p on c.CustomerID = p.CustomerID
  inner join Yuvika.sales1 as pp on o.OrderID = pp.OrderID and c.CustomerID = pp.CustomerID
  inner join Yuvika.sales6 as s on o.OrderID = s.OrderID
  inner join Yuvika.sales8 as f on o.OrderID = f.OrderID and pp.ProductID = f.ProductID
  inner join Yuvika.sales10 as lp on c.CustomerID = lp.CustomerID
  inner join Yuvika.sales11 as pr on o.OrderID = pr.OrderID and c.CustomerID = pr.CustomerID
  inner join Yuvika.sales7 as r on o.OrderID = r.OrderID and pp.ProductID = r.ProductID
  inner join Yuvika.sales9 as sc on c.CustomerID = sc.CustomerID
  inner join Yuvika.sales14 as cb on c.CustomerID = cb.CustomerID
  inner join Yuvika.sales15 as ba on c.CustomerID = ba.CustomerID
  ;
quit;


proc sql;
  create table FinalDataset as
  select 
    c.CustomerID,
    c.FullName,
    c.Gender,
    c.Country,

    o.OrderID,
    o.OrderDate,
    o.OrderAmount,
    o.OrderStatus,

    i.InvoiceID,
    i.TotalAmount,
    i.PaymentStatus,

    p.PaymentID,
    p.Amount as PaymentAmount,

    pp.ProductID,
    pp.ProductName,
    pp.Quantity,
    pp.UnitPrice,

    s.ShipmentID,
    s.ShippingStatus,

    f.FeedbackID,
    f.Rating,

    lp.ProgramName,
    lp.TierLevel,

    pr.PromoCode,
    pr.DiscountAmount,

    r.ReturnID,
    r.ReturnStatus,

    sc.CallID,
    sc.IssueCategory,

    cb.AverageSpend,
    ba.CompanyName

  from Yuvika.sales2 as c
  left join Yuvika.sales4 as o  on c.CustomerID = o.CustomerID
  left join Yuvika.sales3 as i on o.OrderID = i.OrderID
  left join Yuvika.sales5 as p on c.CustomerID = p.CustomerID
  left join Yuvika.sales1 as pp on o.OrderID = pp.OrderID and c.CustomerID = pp.CustomerID
  left join Yuvika.sales6 as s on o.OrderID = s.OrderID
  left join Yuvika.sales8 as f on o.OrderID = f.OrderID and pp.ProductID = f.ProductID
  left join Yuvika.sales10 as lp on c.CustomerID = lp.CustomerID
  left join Yuvika.sales11 as pr on o.OrderID = pr.OrderID and c.CustomerID = pr.CustomerID
  left join Yuvika.sales7 as r on o.OrderID = r.OrderID and pp.ProductID = r.ProductID
  left join Yuvika.sales9 as sc on c.CustomerID = sc.CustomerID
  left join Yuvika.sales14 as cb on c.CustomerID = cb.CustomerID
  left join Yuvika.sales15 as ba on c.CustomerID = ba.CustomerID

  /* Filter out rows missing key info */
  where o.OrderID is not null
    and i.InvoiceID is not null
    and pp.ProductID is not null
    and p.PaymentID is not null
    and s.ShipmentID is not null
    and f.FeedbackID is not null
    and r.ReturnID is not null
    and pr.PromoCode is not null
    and lp.ProgramName is not null
    and sc.CallID is not null
    and cb.AverageSpend is not null
    and ba.CompanyName is not null
  ;
quit;
---------------------------------------------
proc sql;
  create table DashboardData as
  select 
    c.CustomerID,
    c.FullName,
    c.Country,
    
    o.OrderID,
    o.OrderDate,
    o.OrderAmount,
    o.OrderStatus,
    
    i.InvoiceID,
    i.TotalAmount as InvoiceTotal,
    
    pp.ProductID,
    pp.ProductName,
    pp.Quantity,
    
    f.Rating as FeedbackRating

  from Yuvika.sales2 as c
  inner join Yuvika.sales4 as o on c.CustomerID = o.CustomerID
  inner join Yuvika.sales3 as i on o.OrderID = i.OrderID
  inner join Yuvika.sales1 as pp on o.OrderID = pp.OrderID
  left join Yuvika.sales8 as f 
    on o.OrderID = f.OrderID and pp.ProductID = f.ProductID
  ;
quit;

proc print data=Yuvika.DashboardData;
run;




proc sql;
  create table Yuvika.FinalData as
  select 
    c.CustomerID,
    c.FullName,
    c.Gender,
    c.Country,
    o.OrderID,
    o.OrderDate,
    o.OrderAmount,
    o.OrderStatus,
    p.PaymentID,
    p.Amount as PaymentAmount, 
    lp.ProgramName,
    lp.TierLevel,
    sc.CallID,
    sc.IssueCategory,
    cb.AverageSpend,
    ba.CompanyName
  from Yuvika.sales2 as c
  left join Yuvika.sales4 as o  on c.CustomerID = o.CustomerID
  left join Yuvika.sales3 as i on o.OrderID = i.OrderID
  left join Yuvika.sales5 as p on c.CustomerID = p.CustomerID  
  left join Yuvika.sales1 as pp on o.OrderID = pp.OrderID and c.CustomerID = pp.CustomerID
  left join Yuvika.sales6 as s on o.OrderID = s.OrderID
  left join Yuvika.sales8 as f on o.OrderID = f.OrderID and pp.ProductID = f.ProductID
  left join Yuvika.sales10 as lp on c.CustomerID = lp.CustomerID
  left join Yuvika.sales11 as pr on o.OrderID = pr.OrderID and c.CustomerID = pr.CustomerID
  left join Yuvika.sales7 as r on o.OrderID = r.OrderID and pp.ProductID = r.ProductID
  left join Yuvika.sales9 as sc on c.CustomerID = sc.CustomerID
  left join Yuvika.sales14 as cb on c.CustomerID = cb.CustomerID
  left join Yuvika.sales15 as ba on c.CustomerID = ba.CustomerID
  ;
quit;

proc print data =Yuvika.FinalData;
run;
