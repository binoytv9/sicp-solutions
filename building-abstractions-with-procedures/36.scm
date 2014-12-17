(define tolerance 0.00001)
(define (fixed-point f first-guess)
	(define (close-enough? v1 v2)
		(< (abs (- v1 v2)) tolerance))
	(define (try guess)
		(newline)
		(display guess)
		(let ((next (f guess)))
			(if (close-enough? guess next)
				next
				(try next))))
	(try first-guess))

(define (x^x x)
	(fixed-point (lambda (y) (/ (log 1000) (log x))) 1.0))

(define (sqrt x)
	(fixed-point (lambda (y) (average y (/ x y))) 1.0))

(define (average a b) (/ (+ a b) 2))
