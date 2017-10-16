;区间的定义
(define (upper-bond z) car(z))
(define (lower-bond z) cdr(z))

(define (make-interval a b) cons(a b))