;Consider the problem of representing line segments in a plane. Each segment is represented as a pair of points: a starting point and an ending point. Define a constructor make-segment and selectors start-segment and end-segment that define the representation of segments in terms of points. Furthermore, a point can be represented as a pair of numbers: the x coordinate and the y coordinate. Accordingly, specify a constructor make-point and selectors x-point and y-point that define this representation. Finally, using your selectors and constructors, define a procedure midpoint-segment that takes a line segment as argument and returns its midpoint (the point whose coordinates are the average of the coordinates of the endpoints).


(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-segment start-point end-point) (cons start-point end-point))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (midpoint-segment segment)
	(make-point (average (x-point (start-segment segment)) (x-point (end-segment segment)))
		    (average (y-point (start-segment segment)) (y-point (end-segment segment)))))

(define (print-point p)
	(newline)
	(display "(")
	(display (x-point p))
	(display ",")
	(display (y-point p))
	(display ")"))

(define (print-segment segment)
	(print-point (start-segment segment))
	(print-point (end-segment segment)))

(define (average a b) (/ (+ a b) 2))

|#
;-------input sample-------;
(define a (make-point 1 2))
(print-point a)
(define b (make-point 5 6))
(print-point b)
(define ab (make-segment a b))
(print-segment ab)
(print-point (midpoint-segment ab ))
#|
