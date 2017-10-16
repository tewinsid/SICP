(define (matrix-*-vector m v)
	(map (lambda (x) (dot-pot x v)) m))



