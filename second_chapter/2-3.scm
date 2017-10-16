;基于线段的表示构筑矩形
(define (rectangle segL segW)
	(cons segL segW)
)
(define (primeter rectangle)
	(* 2 (+ (distance (car rectangle)) (distance (cdr rectangle))))
)
(define (area rectangle)
	(* (distance (car rectangle)) (distance (cdr rectangle)))
)

(define (distance seg)
	(sqrt (+ (square (- (x-point (car seg)) (square (x-point (cdr seg))))) (square (- (y-point (car seg)) (square (y-point (cdr seg)))))))
)
;建立抽象屏障 length-of-rectangle width-of-rectangle
(define (primeter-rectangle rect)
	(* 2 (+ (length-of-rectangle rect) (width-of-rectangle rect)))
)
(define (area-rectagle rect)
	(* (length-of-rectangle rect) (width-of-rectangle rect))
)
;建立统一的求矩形周长和面积的模式后可以不改变的情况下转换不同的底层实现