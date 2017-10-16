

(define (new-row))

(define (adjoin-position new-row k rest-of-queens)
	(cons new-row rest-of-queens))

(define empty-board
	'())

(define (safe? k position)
	(iter-check (car position) (cdr position) 1))
(define (iter-check row-of-new-queen rest-of-queens i)
	(if (null? rest-of-queens)
		#t
		(let ((row-of-current-queen (car rest-of-queens)))
			(if (or (= row-of-current-queen row-of-new-queen) (= (+ i row-of-current-queen) row-of-new-queen) (= (- row-of-current-queen i) row-of-new-queen))
				#f
				(iter-check row-of-new-queen (cdr rest-of-queens) (+ i 1))))))

思路：递归的检查是否在同一行是否对角线碰撞 1.给出碰撞条件 2.给出结束条件 3.思考如何进行递归 