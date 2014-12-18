;Implement a representation for rectangles in a plane. (Hint: You may want to make use of exercise 2.2.) In terms of your constructors and selectors, create procedures that compute the perimeter and the area of a given rectangle.


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

(define (make-rect lower-corner-point opposit-corner-point)
	(cons lower-corner-point opposit-corner-point))

(define (rect-length pair)
	(- (x-point (cdr pair)) (x-point (car pair))))

(define (rect-breadth pair)
	(- (y-point (cdr pair)) (y-point (car pair))))

(define (rect-perimeter rect)
	(* 2 (+ (rect-length rect) (rect-breadth rect))))

(define (rect-area rect)
	(* (rect-length rect) (rect-breadth rect)))

(define (print-rect rect)
	(let ((x1 (x-point (car rect)))
	      (y1 (y-point (car rect)))
	      (x2 (x-point (cdr rect)))
	      (y2 (y-point (cdr rect))))
		(newline)
		(print x1 y2)
		(print x2 y2)
		(newline)
		(print x1 y1)
		(print x2 y1)))

(define (print x y)
	(display "(")
	(display x)
	(display ",")
	(display y)
	(display ")"))
	


#|
;-------input sample-------;
(define a (make-point 1 2))
(print-point a)
(define b (make-point 5 6))
(print-point b)
(define r (make-rect a b))
(print-rect r)
(rect-length r)
(rect-breadth r)
(rect-perimeter r)
(rect-area r)
|#
