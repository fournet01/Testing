select * from TopTennisSingles order by age_years
where player = 'John McEnroe'

-- List of players that ranked at the top
select distinct player from TopTennisSingles where sex = 'female'

--  Date range of the data 
select min(date) as MinDate, max(date) as MaxDate from TopTennisSingles

--  How many years does the data span?
select DATEDIFF(Year, Min(date),max(date)) as DuringYears from TopTennisSingles

--  How many times did players rank at the top, the total combined weeks, their longest run and starting and ending age and first and last ranking
select player, sex, count(player) as TimesAtTop, max(cumulative_weeks) as TotalWeeks, max(weeks) as LongestRun, min(age_years) as FirstAge, Min(date) as FirstDate,
max(age_years) as LastAge, Max(date) as LastDate
from TopTennisSingles
group by player, sex
order by TimesAtTop desc
