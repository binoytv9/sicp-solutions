;Using the results of exercises 16 and 17, devise a procedure that generates an iterative process for multiplying two integers in terms of adding, doubling, and halving and uses a logarithmic number of steps


(define (* a b) (fast a b 0))

(define (fast a b sum)
	(cond	((= b 0) sum)
		((even? b) (fast (double a) (halve b) sum))
		(else (fast a (- b 1) (+ a sum)))))

(define (double x) (+ x x))

(define (halve x) (/ x 2))
