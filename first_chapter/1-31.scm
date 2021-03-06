;递归版本
(define (accumulate combiner null-value f a next b)
	(if (> a b)
		null-value
		(combiner (f a) (accumulate combiner null-value f (next a) next b))
	)
)
;迭代版本
(define (accumulate combiner null-value f a next b)
	(define (iter a result)
		(if (> a b)
			null-value
			(iter (next a) (combiner (f a) result))
		)
	)
	(iter a null-value)
)
;重定义sum
(define (sum f a next b)
	(define (term x y)
		(+ x y))
	(accumulate term 0 f a next b)
)
;sum函数
(define (sum f a next b)
	(if (> a b)
		0)
	(+ (term a) （sum f (next a) next b)
)
(define (sum f a next b)
	(define (iter a result)
		(if (> a b)
			null-value)
		(iter (next a) (+ (f a) result))
	)
	(iter a 0)
)