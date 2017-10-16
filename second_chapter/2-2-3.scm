;筛选函数 满足维斯的list的所有元素组成的list
(define (filter predicate sequence)
	(cond
		((null? sequence) nil)
		((predicate (car sequence)) (cons (car sequence) (filter predicate (cdr sequence))))
		(else (filter predicate (cdr sequence)))
	)
)
;map 对传入的每个元素执行操作
(define (map option sequence)
	(cond
		((null? sequence) nil)
		(cons (option (car sequence)) (map option (cdr sequence)))
	)
)
;accumulate 累积器 提供初始值 累积方式
(define (accumulate op initial sequence)
	(if ((null? sequence) initial)
		(op (car sequence) (accumulate op initial (cdr sequence))))
)
;生成器 过滤器  映射器 累积器  模式


;append
(define (append list1 list2)
	(if (null? list1)
		list2
		(cons (car list1) (append (cdr list1) list2)))
)



(define (a-tree tree)
(map (lambda (subTree)    
	(if (pair? subTree)
		(a-tree subTree) (a subTree))
	) tree)
)