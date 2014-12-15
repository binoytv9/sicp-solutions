(define (gcd? x y)
	(if (= (remainder x y) 0)
		y
		(gcd? y (remainder x y))))
