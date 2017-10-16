(define (double f)
	(lambda (i) (f (f i))))