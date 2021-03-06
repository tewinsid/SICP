(define (same-parity x . args)
	(if (even? x)
		(cons x (filter-even args '()))
		(cons x (filter-odd args '())))
)
(define (filter-even li result)
	(cond
		((null? li) result)
		((even? (car li)) (filter-even (cdr li) (cons (car li) result)))
		(else (filter-even (cdr li) result))
	))
(define (filter-odd li result)
	(cond
		((null? li) result)
		((odd? (car li)) (filter-odd (cdr li) (cons (car li) result)))
		(else (filter-odd (cdr li) result))
	))

(define (even? x)
	(= (remainder x 2) 0))
(define (odd? x)
	(not (= (remainder x 2) 0)))