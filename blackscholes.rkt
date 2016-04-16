#lang racket
;constants
(define a1 0.31938153)
(define a2 -0.356563782)
(define a3 1.781477937)
(define a4 1.821255978)
(define a5 1.330274429)
(define cnd-c '(a1 a2 a3 a4 a5))
;simple black scholes model using cumulative normal distribution.
;will tie in to monte carlo simulations and the generators.

(define (square x) (* x x))
(define (horner strike coefficients)
  (if (null? coefficients)
      0
      (+ (car coefficients)
         (* strike (cdr coefficients)))))

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
  
      
