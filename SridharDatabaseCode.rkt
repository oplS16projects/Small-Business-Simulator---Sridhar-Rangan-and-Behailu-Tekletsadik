#lang racket


(define BusinessDatabase '() )

(define (make-business-log company-name CEO revenue inventory expenses)
  (list company-name CEO revenue inventory expenses))

(define (create-business-log log)
  (set! BusinessDatabase (append BusinessDatabase (list log))))

(define (company-name log)
  (car log))

(define (CEO log)
  (cadr log))

(define (revenue log)
  (car (cdr(cdr log))))

(define (inventory log)
  (car (cdr (cdr (cdr log)))))

(define (expenses log)
  (car (cdr (cdr (cdr (cdr log))))))

;;; Basic Database Set-up complete. Inserting sample logs for simulated companies

(make-business-log (create-business-log "Fred's Company" "Fred Martin" 1000.00 500 500.00))
(make-business-log (create-business-log "BT's Company" "Behailu" 850.00 200 250.00))

;;; Later on will use filter, map to gather revenue, expenses and cost information
;;; Also will work on creating Interface to help make logs and return values in Database

