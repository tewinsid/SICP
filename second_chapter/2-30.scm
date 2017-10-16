(define (square-tree tree)
	(cond
		((null? tree) '())
		((not (pair? tree)) (square tree))
		(else
			(cons (square-tree (car tree))
			(square-tree (cdr tree)))
			)
	)
)

(define (map-tree proc item)
	(cond ((null? item) '())
		((not (pair? tree)) (proc item))
		((cons (map proc (car item)) (map proc (cdr item)))))
)
(define (square-tree2 tree)
	(map-tree square tree))


(define (square-tree tree)
    (map-tree (lambda (sub-tree)
             (if (pair? sub-tree)           ; 如果有左右子树
                 (square-tree sub-tree)     ; 那么递归地处理它们
                 (square sub-tree)))
         tree))