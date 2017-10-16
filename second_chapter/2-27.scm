(define (reverse li)
	(iter li '())
)
(define (iter li result)
	(if (null? li)
		result
		(iter (cdr li) (cons (car li) result)))
)

(define (deep-reverse tree)
	(reverse tree)
	(cond
		((null? tree) '())
		((not (pair? tree)) tree)
		(reverse (list (deep-reverse (car tree)) (deep-reverse (cdr tree)))) 
	)
)

(define (tree-reverse lst)
    (define (iter remained-items result)
        (if (null? remained-items)
            result
            (iter (cdr remained-items)
            	
                  (cons (if (pair? (car remained-items))
                            (tree-reverse (car remained-items))
                            (car remained-items))
                        result)
            )
        )
    )
    (iter lst '())

)