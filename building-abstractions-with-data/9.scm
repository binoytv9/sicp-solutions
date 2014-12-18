(define (add-interval x y)
	(make-interval (+ (lower-bound x) (lower-bound y))
		       (+ (upper-bound x) (upper-bound y))))

(define (mul-interval x y)
	(let ((p1 (* (lower-bound x) (lower-bound y)))
	      (p2 (* (lower-bound x) (upper-bound y)))
	      (p3 (* (upper-bound x) (lower-bound y)))
	      (p4 (* (upper-bound x) (upper-bound y))))
		(make-interval (min p1 p2 p3 p4)
			       (max p1 p2 p3 p4))))

(define (div-interval x y)
	(if (and (= upper-bound 0) (= lower-bound 0))
		(error "second interval spans to zero!!!")
		(else
			(mul-interval x (make-interval (/ 1.0 (upper-bound y))
						       (/ 1.0 (lower-bound y)))))))

(define (make-interval a b) (cons a b))

(define tolerance 10)
(define (upper-bound x) (+ x (* x (/ tolerance 100))))
(define (lower-bound x) (- x (* x (/ tolerance 100))))

(define (sub-interval x y)
	(let ((p1 (- (lower-bound x) (lower-bound y)))
	      (p2 (- (lower-bound x) (upper-bound y)))
	      (p3 (- (upper-bound x) (lower-bound y)))
	      (p4 (- (upper-bound x) (upper-bound y))))
		(make-interval (min p1 p2 p3 p4)
			       (max p1 p2 p3 p4))))

(define (width u l) (/ (- u l) 2))
