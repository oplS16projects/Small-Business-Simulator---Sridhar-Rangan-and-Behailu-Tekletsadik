# Small Business Simulator

##Authors
Sridhar Rangan

Behailu Tekletsadik

##Overview
The general purpose of our project was to create a helper program for a small business looking to broaden their financial options.  The project was divided into two parts, with the first part being a HTML webpage which prompts the user for inputs for the Black-Scholes model.  The second part of the project was the creation of the Black-Scholes model and adding variability to the simulation.  The end product of the project was a program that could provide an estimation for stocks for our small business in question.

##Screenshot
(insert a screenshot here. You may opt to get rid of the title for it. You need at least one screenshot. Make it actually appear here, don't just add a link.)

Here's a demonstration of how to display an image that's uploaded to this repo:
![screenshot showing env diagram](withdraw.png)

##Concepts Demonstrated

Identify the OPL concepts demonstrated in your project. Be brief. A simple list and example is sufficient. 
* **Data abstraction** is used to provide access to the elements of the RSS feed.
* The objects in the OpenGL world are represented with **recursive data structures.**
* **Symbolic language processing techniques** are used in the parser.

##External Technology and Libraries

[web-server/insta](https://docs.racket-lang.org/web-server/run.html)

##Favorite Scheme Expressions
####Sridhar
One of my favorite snippets of code from this project would be the code to set variables in racket.  The reasoning for being my favorite is that this part took the most time to understand.  The code below modifies an individual global variable by extracting the binding from the user input in the HTML.  This code is so powerful as it allows in just one line the transition between HTML and the Black-Scholes model.
```scheme
  (set! strike (string->number (extract-binding/single 'title bindings)))
  (set! stock (string->number (extract-binding/single 'body bindings)))
  (set! time (string->number (extract-binding/single 'third bindings)))
  (set! interest (string->number (extract-binding/single 'fourth bindings)))
  (set! volatility (string->number (extract-binding/single 'fifth bindings)))
```
####Behailu
This expression reads in a regular expression and elegantly matches it against a pre-existing hashmap....
```scheme
(let* ((expr (convert-to-regexp (read-line my-in-port)))
             (matches (flatten
                       (hash-map *words*
                                 (lambda (key value)
                                   (if (regexp-match expr key) key '()))))))
  matches)
```

##Additional Remarks
Anything else you want to say in your report. Can rename or remove this section.

#How to Download and Run
You may want to link to your latest release for easy downloading by people (such as Mark).

Include what file to run, what to do with that file, how to interact with the app when its running, etc. 
