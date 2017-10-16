(define (unique-pairs n)
	(flatmap (lambda (i) (map (lambda (j) (list i j)) (enumerate-interval 1 (- i 1)))) (enumerate-interval 1 n))
)
(define (flatmap proc seq)
	(accumulate append nil (map proc seq)))




(define (enumerate-interval start end)
	(if (start > end)
		nil
		(cons start (enumerate-interval (+ start 1) end))))

(define (prime-sum-pairs n)
	(map make-pair-sum 
		(filter prime-sum? (unique-pairs n))))

(define (filter proc seq)
	(cond
		((null? seq) '())
		((proc (car seq)) (cons (car seq) (filter proc(cdr seq))))】
		(else (filter proc (cdr seq)))
	)
)
(defien (map proc seq)
	(if (null? seq)
		nil
		(cons (proc (car seq)) (cdr seq))
)