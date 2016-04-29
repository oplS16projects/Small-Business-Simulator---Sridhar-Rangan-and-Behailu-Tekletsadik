
#lang web-server/insta
(require plot)
;constants
(define strike 1)
(define stock 1)
(define time 1)
(define interest 1)
(define volatility 1)

(define a1 0.31938153)
(define a2 -0.356563782)
(define a3 1.781477937)
(define a4 -1.821255978)
(define a5 1.330274429)
(define cnd-c (list 0 a1 a2 a3 a4 a5))


;simple black scholes model using cumulative normal distribution.
;will tie in to monte carlo simulations and the generators.

(define (square x) (* x x))


(define (horner strike coefficients)
  (if (null? coefficients)
      0
      (+ (car coefficients)

         (* strike (horner strike (cdr coefficients))))))

(define (CND strike)

  (if (> 0 strike)
      (- 1 (CND (- strike)))
      (let ((k (/ 1
                  (+ 1 (* strike
                          0.2316419))))) 
        (- 1
           (* (/ 1 (sqrt (* 2 pi)))
              (exp (- (/ (square strike) 2)))
              (horner k cnd-c))))))
(define (black-scholes type stock strike time interest volatility)
  (let* ((f1 (/ (+ (log (/ stock strike))
                   (* time (+ interest (/ (square volatility) 2))))
                (* volatility (sqrt time))))
         (f2 (- f1 (* volatility (sqrt time)))))
  (cond ((eq? type 'c)
         (- (* stock (CND f1))
            (* strike (exp (- (* interest time))) (CND f2))))
        ((eq? type 'p)
         (- (* strike (exp (- (* interest time))) (CND (- f2)))
            (* stock (CND (- f1))))))))

;;;Added this code in but the Black-Scholes doesn't return anything. Also set global variables to 1 since with 0
;;; it broke the program. Not sure about the graph loop though.

;;
(define x '())
(define y '())
(define (randr x)
  (+ x (* (random) x .05) (- (* (random) x .05))))

(define (bsloop stock strike time interest volatility)
  (define (helper timestep end)
    (if (> timestep end)
        (begin
          (set! x (flatten x))
          (set! y (flatten y))
          (plot-file (lines (map vector x (map (lambda (x) (randr x)) y)) #:color 'red)"amg.png"))
        (begin
          (set! y (cons y (black-scholes 'p stock strike time interest volatility)))
          (set! x (cons x timestep))
          (helper (+ timestep .01) end))))
  (helper 0.01 time))

(struct post (title body third fourth fifth))

(define BLOG
  (list (post " " " " " " " " " ")))
 
(define (start request)
  (local [(define a-blog
            (cond [(can-parse-post? (request-bindings request))
                   (cons (parse-post (request-bindings request))
                         BLOG)]
                  [else
                   BLOG]))]
    
         (render-blog-page a-blog request)))

(define (can-parse-post? bindings)
  (and (exists-binding? 'title bindings)
       (exists-binding? 'body bindings)
       (exists-binding? 'third bindings)
       (exists-binding? 'fourth bindings)
       (exists-binding? 'fifth bindings)))



(define (parse-post bindings)
  (begin (set! strike (string->number (extract-binding/single 'title bindings)))
  (set! stock (string->number (extract-binding/single 'body bindings)))
  (set! time (string->number (extract-binding/single 'third bindings)))
  (set! interest (string->number (extract-binding/single 'fourth bindings)))
  (set! volatility (string->number (extract-binding/single 'fifth bindings)))
  (display "Strike: ")
  (display strike)
  (display "\nStock: ")
  (display stock)
  (display "\nTime: ")
  (display time)
  (display "\nInterest: ")
  (display interest)
  (display "\nVolatility: ")
  (display volatility)
  (+ 2 2))
  
 
  
  (post (extract-binding/single 'title bindings)
        (extract-binding/single 'body bindings)
        (extract-binding/single 'third bindings)
        (extract-binding/single 'fourth bindings)
        (extract-binding/single 'fifth bindings)
        )
        )

(define (render-blog-page a-blog request)   
  (response/xexpr
   `(html (head (title "BusinessAssistant"))
          (body (h1 "Business Assistant with Financial Modeling")
                
                (h2 ([style "color: #fff; background-color: #53606D; text-align:center;"]) "BusinessAssistant"))
          
(p "Welcome to BusinessAssistant2016 created by Sridhar Rangan and Behailu Tekletsakik. This program will assist your company in stock options to help your company grow.
This program uses the Black-Scholes Model. We hope this program will be instrumental in growing your company!")

(h2 ([style "color: #fff; background-color: #53606D; text-align:center;"]) "Instructions")
(p "Below you will need to input different values for our different models. Please input them as requested below.")
(h1 ([style "color: #fff; background-color: #53606D; text-align:center;"]) "Values for Black-Scholes Model")
               ,(render-posts a-blog)
               (form
                "Input Strike Price: "
                (input ((name "title")))
                "\nInput Stock Price: "
                (input ((name "body")))
                "\nInput time: "
                (input ((name "third"))
                "\nInput interest: "
                (input ((name "fourth"))
                "\nInput volatility: "
                (input ((name "fifth"))
                (input ((type "submit")))
                ))))))
  )


(define (render-post a-post)
  `(div ((class "post"))
        ,(post-title a-post)
        (p ,(post-body a-post))))
 
(define (render-posts a-blog)
  `(div ((class "posts"))
        ,@(map render-post a-blog)))



