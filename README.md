# Small-Business-Simulator---Sridhar-Rangan-and-Behailu-Tekletsadik
Team Salt and Pepper

# Project Title: Small Business Simulator with Financial Analysis.

### Statement 
Describe your project. Why is it interesting? Why is it interesting to you personally? What do you hope to learn? 

Sridhar: This project is designed to be an helper program to any small business.  It will assist in a variety of small business needs such as revenue, cost, materials and other crucial business aspects of a small business.  In addition, we hope to develop a financial modeling simulator to develop investment options and such.  This project is interesting as it serves to teach us elements from business embedded with computer science.  We hope to learn the key aspects of growing a business and also financial modeling.

Behailu: The financial modeling will be a stock options simulation. It's going to be really cool because I plan on using Intel's methodology on how to do it. It'll be really cool because there's a lot of math and financial theory behind it that I hope to learn such as the idea behind Monte-Carlo computational algorithms and the Black-Scholes model of derivative investments. I've always been interested in algorithms and math so I figured this would be a good way to tie in with the small business simulator as it will work with the idea that the small business has to make a predictive model based on current data to buy stock in the best options.


### Analysis
Explain what approaches from class you will bring to bear on the project. Be explicit: e.g., will you use recursion? How? Will you use map/filter/reduce? How? Will you use data abstraction? Will you use object-orientation? Will you use functional approaches to processing your data? Will you use state-modification approaches? A combination?

The idea here is to identify what ideas from the class you will use in carrying out your project. 

Sridhar: As of now, we will use be using a database (mySQL) to simulate a small business that has inputted a variety of information regarding revenue, cost, inventory and prices.  The database will simulate the information for a number of months.  After connecting the database to racket, our program will use recursion and filter to gather information for a specific category.  For example, let us say we have gathered all monthly information pertinent to revenue (done recursively and via usage of filter).  Then, our program will do various operations such as adding all the revenues, graphing them (through the graph library), and estimating the next month's revenue.  Over the course of the project we will use a database, recursion, filter and the graph library.  After the program runs, a window will pop up with the analysis completed.

Behailu: The approach will use a lot of recursion and iteration as the financial data will be based off of previous given information with a multitude of factors to base off of. The simulation will be approached from an object oriented model as each stock price will have dynamic time based changes. The map/filter/reduce will be definitely useful to process methods onto all different stocks but with variable parameters.

### Data set or other source materials
If you will be working with existing data, where will you get those data from? (Dowload it from a website? access it in a database? create it in a simulation you will build....)
How will you convert that data into a form usable for your project?  
Do your homework here: if you are pulling data from somewhere, actually go download it and look at it. Explain in some detail what your plan is for accomplishing the necessary processing.
If you are using some other starting materials, explain what they are. Basically: anything you plan to use that isn't code.

Behailu: We will be generating all our own data as it is a simulation. The SQL database will host the small business information and will be pulled into Racket client.

Sridhar: At some point, we may decide on using some external images to make the window with results more professional.

### Deliverable and Demonstration
Explain exactly what you'll have at the end. What will it be able to do at the live demo?
What exactly will you produce at the end of the project? A piece of software, yes, but what will it do? Here are some questions to think about (and answer depending on your application).

Will it run on some data, like batch mode? Will you present some analytical results of the processing? How can it be re-run on different source data?

Will it be interactive? Can you show it working? This project involves a live demo, so interactivity is good.

In the end, we will have a program that can accurately analyze specific business information in the database.  The program will have an output window with all the analysis completed.

The simulation will be able to be run in a stepwise fashion

### Evaluation of Results
How will you know if you are successful? 
If you include some kind of _quantitative analysis,_ that would be good.

Sridhar: We will know if we are sucessful if the values of the information are the same of the ones in the database.  One of the most crucial things for this program to be sucessful is for the information received from the database to be accurately stored in the program.  After assuring this part was sucessful, we will also know if we are sucessful if the window pops up presenting the results in a neat and clean fashion.

## Architecture Diagram
![architecture diagram](https://cloud.githubusercontent.com/assets/17771791/14316640/305f9c00-fbd2-11e5-9e45-617590b53613.jpg)


## Schedule
Explain how you will go from proposal to finished product. 

There are three deliverable milestones to explicitly define, below.

The nature of deliverables depend on your project, but may include things like processed data ready for import, core algorithms implemented, interface design prototyped, etc. 

You will be expected to turn in code, documentation, and data (as appropriate) at each of these stages.

Write concrete steps for your schedule to move from concept to working system. 

### First Milestone (Fri Apr 15)
What exactly will be turned in on this day? 

Sridhar: By the first milestone, we should have the connection between our simulation database and racket.  From there we should be able to read specific categories of the information in the database.

### Second Milestone (Fri Apr 22)
What exactly will be turned in on this day? 

Sridhar: By the second milestone, we plan on a majority of the analysis done for multiple categories.  By this time also, we should clean up any bugs that may arise.

### Final Presentation (last week of semester)
What additionally will be done in the last chunk of time?

Sridhar: In the end, we should have a program that can perform a variety of analysis on different aspects of business information.  In addition will clean any errors and bugs that will arise throughout the course of the project.

## Group Responsibilities
Here each group member gets a section where they, as an individual, detail what they are responsible for in this project. Each group member writes their own Responsibility section. Include the milestones and final deliverable.

**Additional instructions for teams of three:** 
* Remember that you must have prior written permission to work in groups of three (specifically, an approved `FP3` team declaration submission).
* The team must nominate a lead. This person is primarily responsible for code integration. This work may be shared, but the team lead has default responsibility.
* The team lead has full partner implementation responsibilities also.
* Identify who is team lead.

In the headings below, replace the silly names and GitHub handles with your actual ones.

### Sridhar Rangan @SridharRangan
will write the....

### Leonard Lambda @lennylambda
will work on...

### Frank Functions @frankiefunk 
Frank is team lead. Additionally, Frank will work on...
