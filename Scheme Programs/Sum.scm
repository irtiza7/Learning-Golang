#lang scheme
(define marks (list 1 2 3 4))
(define emt (list))
(define sum (lambda (lst) (if (null? lst) 0 (+ (car lst) (sum (cdr lst))))))
(sum marks)