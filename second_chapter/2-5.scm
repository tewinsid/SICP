(define (cons a b)
	(* (expt 2 a) (expt 3 b))
)
;每正整数都可以分解为唯一的素数相乘序列
(define (car z)
	(if (= (remainder z 2) 0)
		(+ 1 (car (/ z 2)))
		0)
)
(define (car z)
	(if (= (remainder z 3) 0)
		(+ 1 (car (/ z 3)))
		0)
)