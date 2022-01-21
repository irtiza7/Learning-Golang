#lang scheme

;SUM OF ELEMENTS OF LIST
;(define marks (list 1 2 3 4))
;(define sum (lambda (lst) (if (null? lst) 0 (+ (car lst) (sum (cdr lst))))))
;(sum marks)

;LENGTH OF LIST
;(define marks (list 1 2 3 4))
;(define list-length (lambda (lst) (if (null? lst) 0 (+ 1 (list-length (cdr lst))))))
;(list-length marks)

;AREA OF CIRCLE
;(define radius 20)
;(define pi 3.14)
;(define (square x) (* x x))
;(define area-of-circle (lambda (r) (* pi (square r))))
;(area-of-circle radius)

;SMALLEST AND LARGEST IN LIST
;(define marks (list 100 20 21 50 77 5 99))
;(define find-smallest (lambda (s lst)
;                        (if (> s (car lst) (define s (car lst) )))))

;USING COND FUNCTION
;(define a 30)
;(define b 30)
;(define c 30)
;(define d 40)
;(cond
;  ((< a b) (display "a is less than b"))
;  ((< b c) (display "b is less than c"))
;  (else (display "else")))

;MEMEBER FUNCTION
;(define marks '(1 2 3 4))
;(define exists-in-list (lambda (element lst)
;                        (cond
;                          ((null? lst) "no")
;                          ((= element (car lst)) (display "yes"))
;                          (else (exists-in-list element (cdr lst)))
;                          )))
;(exists-in-list 5 marks)









