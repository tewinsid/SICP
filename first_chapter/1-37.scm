(define (cont-frac n d k)
	(define (cf i)
		(if (= k i)
			(/ (n k) (d k))
			(/ (n i) (+ (d i) (cf (+ i 1))))
		)
	)
	(cf 1)
)
(define n
	(lambda (i) 1.0))
(define d
(lambda (i) 1.0))
(cont-frac n d 10)
(define (cont-frac-iter n d k)
	
	(define (iter i result)
		(if (= 0 i) 
			result
			(iter (- i 1) (/ (n i) (+ (d i) result))
		)
	)
	(iter (- k 1) (/ (n k) (d k)))
)