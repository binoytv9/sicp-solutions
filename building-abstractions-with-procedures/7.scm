;An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next and to stop when the change is a very small fraction of the guess. Design a square-root procedure that uses this kind of end test.


(define (sqrt x) (sqrt-iter 0.0 1.0 x))

(define (sqrt-iter pre_guess guess x)
	(if (good-enough? pre_guess guess)
		guess
		(sqrt-iter guess (improve guess x) x)))

(define (good-enough? pre_guess guess)
	(< (abs (- pre_guess guess)) 0.001))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average a b)
	(/ (+ a b) 2))
