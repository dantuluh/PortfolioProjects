use PortfolioProject


select *
from coviddeaths
order by 3,4

select *
from CovidVaccinations
where continent is not null
order by 3,4



---- Changing data types for all specified columns
--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN iso_code VARCHAR(50);

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN continent VARCHAR(100);

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN location VARCHAR(100);

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN date DATE;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN population FLOAT; 

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN total_cases FLOAT; 

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN new_cases FLOAT;  

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN new_cases_smoothed FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN total_deaths FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN new_deaths FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN new_deaths_smoothed FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN total_cases_per_million FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN new_cases_per_million FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN new_cases_smoothed_per_million FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN total_deaths_per_million FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN new_deaths_per_million FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN new_deaths_smoothed_per_million FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN reproduction_rate FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN icu_patients FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN icu_patients_per_million FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN hosp_patients FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN hosp_patients_per_million FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN weekly_icu_admissions FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN weekly_icu_admissions_per_million FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN weekly_hosp_admissions FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidDeaths
--ALTER COLUMN weekly_hosp_admissions_per_million FLOAT;


-- Changing VARCHAR fields
--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN iso_code VARCHAR(50);

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN continent VARCHAR(100);

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN location VARCHAR(100);

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN date DATE;

---- Changing numeric fields (BIGINT for large values, FLOAT for precision)
--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN new_tests BIGINT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN total_tests BIGINT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN total_tests_per_thousand FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN new_tests_per_thousand FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN new_tests_smoothed FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN new_tests_smoothed_per_thousand FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN positive_rate FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN tests_per_case FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN tests_units VARCHAR(50);

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN total_vaccinations BIGINT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN people_vaccinated BIGINT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN people_fully_vaccinated FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN new_vaccinations FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN new_vaccinations_smoothed FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN total_vaccinations_per_hundred FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN people_vaccinated_per_hundred FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN people_fully_vaccinated_per_hundred FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN new_vaccinations_smoothed_per_million FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN stringency_index FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN population_density FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN median_age FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN aged_65_older FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN aged_70_older FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN gdp_per_capita FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN extreme_poverty FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN cardiovasc_death_rate FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN diabetes_prevalence FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN female_smokers FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN male_smokers FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN handwashing_facilities FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN hospital_beds_per_thousand FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN life_expectancy FLOAT;

--ALTER TABLE PortfolioProject.dbo.CovidVaccinations
--ALTER COLUMN human_development_index FLOAT;


-- 
select Location,date, total_cases, new_cases,total_deaths, population
from coviddeaths
order by 1,2


-- looking at Total Cases vd Total Deaths
-- likelihood of dying if you contract covid in your country
select location, date, total_cases, total_deaths, (total_deaths/nullif(total_cases,0))*100 as DeathPercentage
from coviddeaths
where location like 'india'
order by 1,2

--looking at total cases vs population
-- shows what percentage of population got covid
select location, date, population, total_cases, (total_cases/population)*100 as DeathPercentage
from coviddeaths
where location like 'india'
order by 1,2

--  looking at countries with highest infection rate compared to population
select location, population, MAX(total_cases) as HighestInfectionCount, MAX((nullif(total_cases,0)/nullif(population,0)))*100 as PercentPolulationInfected
from coviddeaths
group by location,population
order by PercentPolulationInfected DESC


-- showing the countrues with the highest death count per population
select location, MAX(total_deaths) as TotalDeathCount
from coviddeaths
where continent != ''
group by location
order by TotalDeathCount DESC

-- Lets brak things down by Continent
select location, MAX(total_deaths) as TotalDeathCount
from coviddeaths
where continent = ''
group by location
order by TotalDeathCount DESC
-- 
select continent, MAX(total_deaths) as TotalDeathCount
from coviddeaths
where continent != ''
group by continent
order by TotalDeathCount DESC

--GLOBAL NUMBERS

-- Total Deaths across the Globe
select  date, sum(new_cases) as Total_Cases, SUM(new_deaths) as Total_Deaths,(nullif(SUM(new_deaths),0)/nullif(sum(new_cases),0))*100 as DeathPercentage--, total_deaths, (total_deaths/nullif(total_cases,0))*100 as DeathPercentage
from coviddeaths
where continent != ''
group by date
order by 1,2

-- Total cases 
select  sum(new_cases) as Total_Cases, SUM(new_deaths) as Total_Deaths,(nullif(SUM(new_deaths),0)/nullif(sum(new_cases),0))*100 as DeathPercentage--, total_deaths, (total_deaths/nullif(total_cases,0))*100 as DeathPercentage
from coviddeaths
where continent != ''
order by 1,2

 
--using covidVaccination we are Looking up Total Population vs Vaccinations

 select d.continent, d.location, d.date, d.population, v.new_vaccinations
 from coviddeaths d
 join CovidVaccinations v
 on d.location =v.location
 and d.date = v.date
 where d.continent != ''
 order by 1,2,3

 -- sum of people getting vaccinated each day
 select d.continent, d.location, d.date, d.population, v.new_vaccinations, sum(v.new_vaccinations) over (partition by d.location order by d.location,d.date) as RollingPeopleVaccinated
 from coviddeaths d
 join CovidVaccinations v
 on d.location =v.location
 and d.date = v.date
 where d.continent != ''
 order by 2,3

 -- Getting the % of people vaccinated vs population

with popvsvac (continent, location, date, population,new_vaccinations, RollingPeopleVaccinated)
as
(
 select d.continent, d.location, d.date, d.population, v.new_vaccinations, sum(v.new_vaccinations) over (partition by d.location order by d.location,d.date) as RollingPeopleVaccinated
 from coviddeaths d
 join CovidVaccinations v
 on d.location =v.location
 and d.date = v.date
 where d.continent != ''
-- order by 2,3
 )
 select *, (nullif(RollingPeopleVaccinated,0)/population)*100
 from popvsvac

  -- Getting the % of people vaccinated vs population (MAX)

  
with popvsvac (continent, location, date, population,new_vaccinations, RollingPeopleVaccinated)
as
(
 select d.continent, d.location, d.date, d.population, v.new_vaccinations, sum(v.new_vaccinations) over (partition by d.location order by d.location,d.date) as RollingPeopleVaccinated
 from coviddeaths d
 join CovidVaccinations v
 on d.location =v.location
 and d.date = v.date
 where d.continent != ''
-- order by 2,3
 )
 select *, (nullif(RollingPeopleVaccinated,0)/population)*100
 from popvsvac


 --Temp Table 
 Drop table if exists #PercentPopulationVaccinated
 create table #PercentPopulationVaccinated
 (
 Conitinent nvarchar(255),
 location nvarchar(255),
 Date datetime,
 Population numeric,
 New_vaccinations numeric,
 RollingPeopleVaccinated numeric,
 )

 Insert into #PercentPopulationVaccinated
  select d.continent, d.location, d.date, d.population, v.new_vaccinations, sum(v.new_vaccinations) over (partition by d.location order by d.location,d.date) as RollingPeopleVaccinated
 from coviddeaths d
 join CovidVaccinations v
 on d.location =v.location
 and d.date = v.date
-- where d.continent != ''
-- order by 2,3
select *, (nullif(RollingPeopleVaccinated,0)/population)*100
 from #PercentPopulationVaccinated



 --creating view to store data for later visulizations

 create view PercentPopulationVaccinated as
 select d.continent, d.location, d.date, d.population, v.new_vaccinations, sum(v.new_vaccinations) over (partition by d.location order by d.location,d.date) as RollingPeopleVaccinated
 from coviddeaths d
 join CovidVaccinations v
 on d.location =v.location
 and d.date = v.date
where d.continent != ''
-- order by 2,3

select *
from PercentPopulationVaccinated

--create view for Total Deaths across the Globe

create view Total_deaths as
select  date, sum(new_cases) as Total_Cases, SUM(new_deaths) as Total_Deaths,(nullif(SUM(new_deaths),0)/nullif(sum(new_cases),0))*100 as DeathPercentage--, total_deaths, (total_deaths/nullif(total_cases,0))*100 as DeathPercentage
from coviddeaths
where continent != ''
group by date
--order by 1,2
