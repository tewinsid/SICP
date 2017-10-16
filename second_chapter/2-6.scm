(define (add-temp M N)
	(lambda (M) (lambda (N) (lambda (f) (lambda (x) (M f(N f x))))))
)