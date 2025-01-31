// Change the sql such that rank=1 is not removed and thus multiple records of every account is returned.
  // The multiple records are likely, when the account is havign an update of product subscription after initial purchase.

Select 
DATEADD(DAY, 1, CURRENT_DATE()) AS TXN_DATE, 
CONTACTID, RECIPIENT_LAST_NAME, RECIPIENT_FIRST_NAME, RECIPIENT_NAME, RECIPIENT_EMAIL, 
CONTACT_COUNTRY, 
IMPACT_USER_ACCOUNT_CREATED_DATE, 
ACCOUNT_NUMBER, ACCOUNT_NAME, INDUSTRY_SEGMENT, GEO, 
MAJOR_AREA,AREA, REGION, DISTRICT, TERRITORY, ACV_BANDING, 
MARKET_SEGMENTATION, ACCOUNT_CUSTOMER_SINCE, 
IMPACT_PACKAGE, IMPACT_PURCHASE_DATE, 
IMPACT_FUNDAMENTALS_STATUS,   
SUCCESS_STATUS, IMPACT_STATUS, 
case 
      when CONTACT_COUNTRY = 'AO' then 'PT' 
     when CONTACT_COUNTRY = 'AR' then 'ES' 
     when CONTACT_COUNTRY = 'BR' then 'PT-BR' 
     when CONTACT_COUNTRY = 'CL' then 'ES' 
    when CONTACT_COUNTRY = 'CR' then 'ES' 
   when CONTACT_COUNTRY = 'CU' then 'ES' 
    when CONTACT_COUNTRY = 'CV' then 'PT' 
    when CONTACT_COUNTRY = 'DE' then 'DE' 
     when CONTACT_COUNTRY = 'DO' then 'ES' 
     when CONTACT_COUNTRY = 'EC' then 'ES' 
     when CONTACT_COUNTRY = 'ES' then 'PT-ES' 
     when CONTACT_COUNTRY = 'FR' then 'FR' 
    when CONTACT_COUNTRY = 'GT' then 'ES' 
   when CONTACT_COUNTRY = 'GW' then 'PT' 
    when CONTACT_COUNTRY = 'HN' then 'ES' 
    when CONTACT_COUNTRY = 'IT' then 'IT' 
     when CONTACT_COUNTRY = 'JP' then 'JA' 
     when CONTACT_COUNTRY = 'KR' then 'KO' 
     when CONTACT_COUNTRY = 'MX' then 'ES' 
     when CONTACT_COUNTRY = 'NI' then 'ES' 
    when CONTACT_COUNTRY = 'NL' then 'NL' 
   when CONTACT_COUNTRY = 'PA' then 'ES' 
    when CONTACT_COUNTRY = 'PE' then 'ES' 
    when CONTACT_COUNTRY = 'PT' then 'PT' 
     when CONTACT_COUNTRY = 'PY' then 'ES' 
     when CONTACT_COUNTRY = 'RU' then 'RU' 
     when CONTACT_COUNTRY = 'ST' then 'PT' 
     when CONTACT_COUNTRY = 'SV' then 'ES' 
    when CONTACT_COUNTRY = 'UY' then 'ES' 
   when CONTACT_COUNTRY = 'VE' then 'ES' 
    else 'EN'   
end as Language 
, case     
      when 
ABS(DATEDIFF(month, TO_DATE(current_date()), TO_DATE(IMPACT_PURCHASE_DATE))) between 1 and 6 then 'True' 
      else 'False' 
end as FIRST_IMPACT_SURVEY, 
NVL("CS Sponsor", 'John Doe')  as  "CS Sponsor", "CS Sponsor EMAIL", 
"Customer Success Manager", 
"Customer Success Manager Email", 
"CSM Success Manager", 
"CSM Success Manager Email", 
"Success Architect", 
"Success Architect Email", 
"Platform Architect", 
"Platform Architect Email", 
"Support Account Manager", 
"Support Account Manager Email", 
"Training Solution Consultant", 
"Training Solution Consultant Email", 
"Services Executive", 
"Services Executive Email", 
"Account Executive", 
"Account Executive Email", 
"Account Executive Manager", 
"Account Executive Manager Email", 
"ProductBusinessUnitValue", 
"StartDate", 
"ContractEndDate", 
"ProductSKU", 
"ProductFullName", 
survey.RECIPIENT_JOB_LEVEL, survey.Impact_Role, rank 
FROM survey 
WHERE 1=1 and survey.rank=1 ; 

 
