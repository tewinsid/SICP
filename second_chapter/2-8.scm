;减法
(define (sub-interval a b)
	(make-interval (- (upper-bond a) (lower-bond b))
				   (- (lower-bond a) (upper-bond b)))
)