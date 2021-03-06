(define (simpson f a b n)
	(define h
		(/ (- b a) n))
	(define (param k)
		(cond ((or (= k 0) (= k n)) 1)
			((even?) 2)
			(else 4)))
	(define (y k)
		(f (+ a (* k h))))
	(define (term k)
		(* (param k) (y k)))
	(define (next k)
		(+ k 1))
	(* (/ h 3) (sum term 0 next n))
)

(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))