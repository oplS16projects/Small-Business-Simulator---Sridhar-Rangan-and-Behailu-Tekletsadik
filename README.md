# Small-Business-Simulator---Sridhar-Rangan-and-Behailu-Tekletsadik

# Project Title: Small Business Simulator with Financial Analysis.

### Statement 


Sridhar: This project is designed to be an helper program to any small business.  It will assist in a variety of small business needs such as revenue, cost, materials and other crucial business aspects of a small business.  In addition, we hope to develop a financial modeling simulator to develop investment options and such.  This project is interesting as it serves to teach us elements from business embedded with computer science.  We hope to learn the key aspects of growing a business and also financial modeling.

Behailu: The financial modeling will be a stock options simulation. It's going to be really cool because I plan on using Intel's methodology on how to do it. It'll be really cool because there's a lot of math and financial theory behind it that I hope to learn such as the idea behind Monte-Carlo computational algorithms and the Black-Scholes model of derivative investments. I've always been interested in algorithms and math so I figured this would be a good way to tie in with the small business simulator as it will work with the idea that the small business has to make a predictive model based on current data to buy stock in the best options.


### Analysis
 

Sridhar: As of now, we will use be using a database (mySQL) to simulate a small business that has inputted a variety of information regarding revenue, cost, inventory and prices.  The database will simulate the information for a number of months.  After connecting the database to racket, our program will use recursion and filter to gather information for a specific category.  For example, let us say we have gathered all monthly information pertinent to revenue (done recursively and via usage of filter).  Then, our program will do various operations such as adding all the revenues, graphing them (through the graph library), and estimating the next month's revenue.  Over the course of the project we will use a database, recursion, filter and the graph library.  After the program runs, a window will pop up with the analysis completed.

Behailu: The approach will use a lot of recursion and iteration as the financial data will be based off of previous given information with a multitude of factors to base off of. The simulation will be approached from an object oriented model as each stock price will have dynamic time based changes. The map/filter/reduce will be definitely useful to process methods onto all different stocks but with variable parameters.

### Data set or other source materials

Behailu: We will be generating all our own data as it is a simulation. The SQL database will host the small business information and will be pulled into Racket client.

Sridhar: At some point, we may decide on using some external images to make the window with results more professional.

### Deliverable and Demonstration

In the end, we will have a program that can accurately analyze specific business information in the database.  The program will have an output window with all the analysis completed.

The simulation will be able to be run in a stepwise fashion so one can see how predictive models work and how the simulation runs based on health of stock and normal volatility.

### Evaluation of Results

 We will know if we are sucessful if the values of the information are the same of the ones in the database.  One of the most crucial things for this program to be sucessful is for the information received from the database to be accurately stored in the program.  After assuring this part was sucessful, we will also know if we are sucessful if the window pops up presenting the results in a neat and clean fashion.
 The stock modeler will show a proper looking variability with the small business predictive modelling at least being right some of the time.


## Architecture Diagram
![architecture diagram](https://cloud.githubusercontent.com/assets/17771791/14316640/305f9c00-fbd2-11e5-9e45-617590b53613.jpg)


## Schedule
 

### First Milestone (Fri Apr 15)
What exactly will be turned in on this day? 

By the first milestone, we should have the connection between our simulation database and racket.  From there we should be able to read specific categories of the information in the database.
Should have implemented mersenne twister and box-muller transform.

### Second Milestone (Fri Apr 22)
What exactly will be turned in on this day? 

By the second milestone, we plan on a majority of the analysis done for multiple categories. The Black-Sholes pricing model should be implemented by this point. By this time also, we should clean up any bugs that may arise.

### Final Presentation (last week of semester)
What additionally will be done in the last chunk of time?

In the end, we should have a program that can perform a variety of analysis on different aspects of business information. The GUI will display all the relevant stock pricing data in a potentially stepwise fashion. In addition will clean any errors and bugs that will arise throughout the course of the project.



### Sridhar Rangan @SridharRangan
will write the database interaction and analysis.

### Behailu Tekletsadik @OhBehive
Stock options pricing and GUI.
