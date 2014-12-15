Fuel Finder
=======

[Visit Fuel Finder](https://______.herokuapp.com/)

### Overview

**Fuel Finder** is a single page web application that allows users to view the types of alternative fuel stations in a given US state as well as their relative percentages for that state. The application's data is publically available from the National Renewable Energy Laboratory.

### Background
**Fuel Finder** was developed as a data visualization project capitalizing on growing public interest in alternative fuel use in the United States. The data presented is useful for the user who wants to understand with a quick glance the different types of alternative fuel stations available to them in a given state. 

### User Stories / Expectations
*Top Level*

* A user should be able to visit the site, select a state from a drop down of choices and upon selection, see a pie chart representation of the percentage breakdown of alternative fuel stations in that state.

*Details*

* A user should land on a homepage that will allow them to see a dropdown of states and a default pie chart.
* A user should be able to pick from all 50 US states in any order and as many times as they want.
* With each new state picked, a new chart will render without refreshing the page. 

### Visuals
[Click for Wireframes](https://github.com/PaulTuraew/Metacog/tree/master/Metacog_Wireframes) 

[Click for ERD](https://github.com/PaulTuraew/Metacog/tree/master/Metacog_ERD)


### Technologies Used
* Ruby 2.1.2
* Ruby on Rails 4.1.6
* JavaScript
* jQuery
* [NREL API](http://developer.nrel.gov/docs/)
* PostgreSQL Database
* Additional gems used:
    * Highcharts-rails;
    * 12_factor.
