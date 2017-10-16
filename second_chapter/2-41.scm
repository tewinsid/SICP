(define (unique-triple n)
	(flatmap (lambda (i) (map (lambda (j) (cons i j)) (unique-pairs (- i 1)))) (enumerate-interval 1 n))
	)

(defein (temp n s)
	(remove-triples-not-equal-to 7 (unique-triple n)))

(define (triple-sum-equal-to? sum triple)
    (= sum
       (+ (car triple)
          (cadr triple)
          (caddr triple))))]

(define (remove-triples-not-equal-to sum triple)
    (filter (lambda (current-triple)
                (triple-sum-equal-to? sum current-triple))
            triple))

(define (unique-pairs n)
	(flatmap (lambda (i) (map (lambda (j) (list i j)) (enumerate-interval 1 (- i 1)))) (enumerate-interval 1 n))
)
(define (temp i)
	(list i j) (enumerate-interval 1 (- i 1)))
(define (flatmap proc seq)
	(accumulate append nil (map proc seq)))
(define (filter proc seq)
	(cond
		((null? seq) '())
		((proc (car seq)) (cons (car seq) (filter proc(cdr seq))))
		(else (filter proc (cdr seq)))
	)
)
(define (enumerate-interval start end)
	(if (start > end)
		nil
		(cons start (enumerate-interval (+ start 1) end))))
(defien (map proc seq)
	(if (null? seq)
		nil
		(cons (proc (car seq)) (cdr seq))
)