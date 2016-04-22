#lang web-server/insta
 
(struct post (title body))
 
(define BLOG
  (list (post "Filler code" "filler")))
 
(define (start request)
  (render-blog-page BLOG request))


(define (render-blog-page a-blog request)   
  (response/xexpr
   `(html (head (title "BusinessAssistant"))
          (body (h1 "Business Assistant with Financial Modeling")
                (h1 "Welcome")
(p "Welcome to BusinessAssistant2016 created by Sridhar Rangan and Behailu Tekletsakik. This program will assist your company in multiple stock options to help your company grow.
This program uses modeling such as the monte carlo method and black-scholes model. We hope this program will be instrumental in growing your company!")

(h1 "Instructions")
(p "Below you will need to input different values for our different models. Please input them as requested below.")
(h1 "Values For Modeling")
                "Input Strike Price: "
                (input ((type "text")(number "StrikePrice")))
                "Input Stock Price: "
                (input ((type "text")(number "StockPrice")))
                (input ((type "submit")(value "Submit")))))))



(define (render-post a-post)
  `(div ((class "post"))
        ,(post-title a-post)
        (p ,(post-body a-post))))
 
(define (render-posts a-blog)
  `(div ((class "posts"))
        ,@(map render-post a-blog)))