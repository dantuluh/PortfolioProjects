select *
from NashvilleHousing;

-- populate property address

SELECT *
FROM NashvilleHousing
--where PropertyAddress is NULL
order by ParcelID

--------------------------------------------------------------------------------------------------------------------------

-- Seeing if we have any null PROPERTY ADDRESSS

SELECT u.ParcelID, u.PropertyAddress, p.ParcelID, p.PropertyAddress, ISNULL(u.PropertyAddress,p.PropertyAddress)
FROM NashvilleHousing u
JOIN NashvilleHousing p
ON u.ParcelID=p.ParcelID
and u.[UniqueID]!=p.[UniqueID]
where u.PropertyAddress is NULL

--------------------------------------------------------------------------------------------------------------------------

--updating the propert adress with null to actual property
UPDATE u
set propertyaddress = ISNULL(u.PropertyAddress,p.PropertyAddress)
FROM NashvilleHousing u
JOIN NashvilleHousing p
ON u.ParcelID=p.ParcelID
and u.[UniqueID]!=p.[UniqueID]

-- now you can can see there are no null values in Property address

--------------------------------------------------------------------------------------------------------------------------

-- Breaking out Address into Individual Columns (Address, City, State)
-- propert address
SELECT 
SUBSTRING(propertyaddress, 1, CHARINDEX(',',propertyaddress)-1) as address,
SUBSTRING(propertyaddress, CHARINDEX(',',propertyaddress)+1,LEN(PropertyAddress)) as address
from NashvilleHousing
--another way we coul seperate the strings.
select 
Parsename(REPLACE(propertyaddress,',','.'), 2)
,Parsename(REPLACE(propertyaddress,',','.'), 1)
from NashvilleHousing;

ALTER TABLE NashvilleHousing
Add PropertySplitAddress Nvarchar(255);

Update NashvilleHousing
SET PropertySplitAddress = SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1 )


ALTER TABLE NashvilleHousing
Add PropertySplitCity Nvarchar(255);

Update NashvilleHousing
SET PropertySplitCity = SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) + 1 , LEN(PropertyAddress))
--just to check the changes
select *
from NashvilleHousing;

Select OwnerAddress
From PortfolioProject.dbo.NashvilleHousing

SELECT
Parsename(REPLACE(OwnerAddress,',','.'),3)
,Parsename(REPLACE(OwnerAddress,',','.'),2)
,Parsename(REPLACE(OwnerAddress,',','.'),1)
from NashvilleHousing

ALTER Table NashvilleHousing
add ownersplitaddress NVARCHAR(255);

update NashvilleHousing
set ownersplitaddress = Parsename(REPLACE(OwnerAddress,',','.'),3)

ALTER Table NashvilleHousing
add ownersplitcity NVARCHAR(255);

update NashvilleHousing
set ownersplitcity = Parsename(REPLACE(OwnerAddress,',','.'),2)

ALTER Table NashvilleHousing
add ownersplitstate NVARCHAR(255);

update NashvilleHousing
set ownersplitstate = Parsename(REPLACE(OwnerAddress,',','.'),1)

select *
from NashvilleHousing


--------------------------------------------------------------------------------------------------------------------------


-- Change Y and N to Yes and No in "Sold as Vacant" field



Select Distinct(SoldAsVacant), Count(SoldAsVacant)
From PortfolioProject.dbo.NashvilleHousing
Group by SoldAsVacant
order by 2


SELECT SoldAsVacant, 
case 
when SoldAsVacant = 'Y' then 'Yes'
when SoldAsVacant ='N' then 'No'
else SoldAsVacant
END
from NashvilleHousing

UPDATE NashvilleHousing
set SoldAsVacant = case 
when SoldAsVacant = 'Y' then 'Yes'
when SoldAsVacant ='N' then 'No'
else SoldAsVacant
END

-----------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove Duplicates

WITH RowNumCTE AS(
Select *,
	ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
					UniqueID
					) row_num

From PortfolioProject.dbo.NashvilleHousing
--order by ParcelID
)
SELECT *
FROM RowNumCTE
where row_num > 1
order by PropertyAddress

---------------------------------------------------------------------------------------------------------

-- Delete Unused Columns

SELECT *
FROM NashvilleHousing

ALTER TABLE NASHVILLEHOUSING    
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress, SalesDate
