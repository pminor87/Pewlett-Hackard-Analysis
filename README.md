# Pewlett-Hackard-Analysis

## Overview of the Analysis:
- The purpose of this analysis is to prepare Pewlett-Hackard as many of their current employees reach retirement age, aka the "silver tsunami".

### Scope:
- Identify which employees will be eligible to retire soon.
- How many employees will soon be ritiring by title.
- Which employees would be eligible for the mentorship program.
- Utilize QuickDBD and PostgreSQL for this analysis.

<img width="600" src="Resources/Pyber Summary DataFrame.PNG" align="center">


<br>

## Results:
### 1. Retirement_titles table

- This table pulled the basic informamtion for each employee born between 1952 and 1955.
- This is a good start but unfortunately anyone who has ever changed titles while with the company will show as duplicate data.

<br>

- Suburban
    - Second highest amount of Rides, Drivers and Fares.
    - Second lowest Average Fare per Ride and Driver.

<br>

- Rural
    - Lowest amount of Rides, Drivers and Fares.
    - Highest Average Fare per Ride and Driver.

<br>



<br>

<table>
  <tr>
    <td><img src="analysis/PyBer_fare_per_city_type_summary.png" width= height=></td>
  </tr>
 </table>

<br>

## Summary:

#### The data indicates that the lower the density population for each city the lower the amount of rides and drivers there are and vice versa. However, the density of the city also seems to dictate the average fare per ride and driver.

### Reccomendations to Maximize Profit:
- Charge more per mile for denser populations since the trips are more likely shorter but the efficiency of the trips would be lower based off assumed traffic.
- Set a mandatory minimum tip for rural areas to incentive drivers to continue their business in this area since they may be waiting on rides due to the lower amount of total rides for this area.
- Assign drivers to higher populated cities based off the fuel efficiency of their vehicle in order to save gas expenses.