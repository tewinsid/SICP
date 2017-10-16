(define (repeated f n)
	(define (iter i f-temp)
		(if (= i n)
			f-temp
			(iter (- n 1) (lambda (x) (f (f-temp x)))))
	)
	(iter n f)
)
;迭代版
(define (repeated f n)
	(if (= n 1)
		f
		(lambda (x) (let ((fs (repeated f (- n 1)))
			(f (fs x)))))
)