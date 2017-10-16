(define (filtered-accumulate combiner null-value f a next b filter)
	(cond
		((> a b) null-value)
		((filter a) (combiner (f a) (filtered-accumulate combiner null-value f (next a) next b filter)))
		(else (filtered-accumulate combiner null-value f (next a) next b filter))
	)
)

(filtered-accumulate + 0 a (lambda (x) (+ x 1)) b prime?)
(filtered-accumulate * 1 1 (lambda (x) (+ x 1)) n (lambda (i n)(and (< i n) (= 1 (gcd i n)))))

(define (filtered-accumulate combine null-value term a next b valid?)
    (if (> a b)
        null-value
        (let(   (rest-terms 
					(filtered-accumulate combine
                                       null-value
                                       term
                                       (next a)
                                       next
                                       b
                                       valid?)
        		)
        	)
            (if (valid? a)
                (combine (term a) rest-terms)
                rest-terms)
        )
    ))