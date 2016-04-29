# Small Business Simulator

##Authors
Sridhar Rangan

Behailu Tekletsadik

##Overview
The general purpose of our project was to create a helper program for a small business looking to broaden their financial options.  The project was divided into two parts, with the first part being a HTML webpage which prompts the user for inputs for the Black-Scholes model.  The second part of the project was the creation of the Black-Scholes model and adding variability to the simulation.  The end product of the project was a program that could provide an estimation for stocks for our small business in question.
The Black-Scholes model is an ideal based simulation of the minimum market price of a stock based on a call/put perspective. It takes into account the stock price, the strike price, the interest, the time duration and the volatility of the stock itself.
In reality, the nature of stock trading cannot be predicted and this is a very lightweight model. Most stock predictive models and future analysis simulations take into account terabytes of data. This is obviously not feasible with our resources.


##Screenshot

![screenshothtml](https://cloud.githubusercontent.com/assets/17771791/14917264/2e0aea50-0dec-11e6-942f-43fa20142f4c.jpg)

##Concepts Demonstrated

Writing a webpage, addressing of a network page.

Mathematical models of financial data.

Random number generation and its practicality. If I were to use OpenCL, the Mersenne twister would've been ideal. That doesn't work in this case so I used a much simpler but less accurate formula for generating trending stock variability.

##External Technology and Libraries

[web-server/insta](https://docs.racket-lang.org/continue/)

[plot](https://docs.racket-lang.org/plot/)

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
Since I just did a mathematical model, I have to say that the blac-scholes model is my favorite part. I think accounting for the put/call of stock options trading definitely helped me in learning a bit more about stock trading because the results actually make sense. It's cool to see what financial modelers use to make ludacrious amounts of money.
```scheme
define (bsloop time)
  (define (helper timestep end)
    (if (> timestep end)
        (begin
          (set! x (flatten x))
          (set! y (flatten y))
          (plot (lines (map vector x (map (lambda (x) (randr x)) y)) #:color 'red) "bs.png"))
        (begin
          (set! y (cons y (black-scholes 'p 200 220 timestep .05 .1)))
          (set! x (cons x timestep))
          (helper (+ timestep .01) end))))
  (helper 0.01 time))
```



