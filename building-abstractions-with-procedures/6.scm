	;Square Roots by Newton's Method using new if procedure


(define (sqrt x) (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
	(new-if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) x)))

(define (new-if predicate then-clause else-clause)
	(cond	(predicate then-clause)
		(else else-clause)))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average a b)
	(/ (+ a b) 2))
