(define (compose F1 F2)
	(lambda (i) (F1 (F2 i)))
)