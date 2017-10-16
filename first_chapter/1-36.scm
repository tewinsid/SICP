(define tolerance 0.000000001)
(define (fixed-poined f first-guess)
	(define (close-enough? v1 v2)
	(< (abs (- v1 v2)) tolerance))
(define (try guess)
	(display guess)
	(newline)
	(let ((next (f guess)))
		(if (close-enough? guess next)
			next
			(try next))))
(try first-guess))
(define (average-damp f)
    (lambda (x)
        (average x 
                 (f x))))
 (define formula 
(lambda (x)
(/ (log 1000) 
(log x))))

 (define (average x y)
 	(/ (+ x y) 2))

