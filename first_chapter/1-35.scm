(define tolerance 0.000000001)
(define (fixed-poined f first-guess)
	(define (close-enough? v1 v2)
	(< (abs (- v1 v2)) tolerance))
(define (try guess)
	(let ((next (f guess)))
		(if (close-enough? guess next)
			next
			(try next))))
(try first-guess))

(fixed-poined (lambda (x) (+ 1 (/ 1 x))) 0.0)
(define d
		(lambda (i) (+ i (- i 1))))