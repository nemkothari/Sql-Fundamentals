## 1. Introduction ##

SELECT COUNT(Major) FROM recent_grads WHERE ShareWomen < 0.5

## 2. Finding a Column's Minimum and Maximum Values in SQL ##

select Major, Major_category,  MIN(Median)
FROM recent_grads where Major_category = 'Engineering'

## 3. Calculating Sums and Averages in SQL ##

Select SUM(Total) from recent_grads

## 4. Combining Multiple Aggregation Functions ##

SELECT AVG(Total),MIN(Men), MAX(Women)
FROM recent_grads

## 5. Customizing The Results ##

SELECT COUNT(*) as "Number of Majors" ,  MAX("Unemployment_rate") as "Highest Unemployment Rate"   FROM recent_grads

## 6. Counting Unique Values ##

select COUNT(DISTINCT (Major)) as 'unique_majors' , COUNT(DISTINCT (Major_category)) as 'unique_major_categories' , COUNT(DISTINCT (Major_code )) as 'unique_major_codes'  from recent_grads
    

## 7. Performing Arithmetic in SQL ##

 select Major  ,  Major_category  , P75th - P25th quartile_spread from 
 recent_grads  order by  quartile_spread  LIMIT 20