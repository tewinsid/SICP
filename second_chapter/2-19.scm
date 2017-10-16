(define (cc amount coin-value)
	(cond
		((= amount 0) 0)
		((or (< amount 0) (no-more? coin-value)) 0)
		(else
			(+
				(cc amount (except-first-denomination coin-value))
				(cc (- amount (firest-denomination coin-value)) coin-value)
			)
		)
	)
)

(define (no-more? li)
	(null? li))
(define (firest-denomination li)
	(car li))
(define (except-first-denomination li)
	(cdr li))