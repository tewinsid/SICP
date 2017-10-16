(define (get-origin frame)
	(car frame))
(define (get-edge1 frame)
	(car (cdr frame)))
(define (get-edge2 frame)
	(cdr (cdr frame)))

;第二种情况
(define (get2-origin frame)
	(car frame))
(define (get2-edge1 frame)
	(car (cdr frame)))
(define (get2-edge2 frame)
	(cdr (cdr frame)))
