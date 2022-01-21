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
(define radius 20)
(define pi 3.14)
(define (square x) (* x x))
(define area-of-circle (lambda (r) (* pi (square r))))
;(area-of-circle radius)

;SMALLEST AND LARGEST IN LIST
(define marks (list 100 20 21 50 77 5 99))
(define find-smallest (lambda (s lst)
                        (if (> s (car lst) (define s (car lst) )))))






















































































