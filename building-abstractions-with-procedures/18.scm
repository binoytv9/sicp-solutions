;Using the results of exercises 16 and 17, devise a procedure that generates an iterative process for multiplying two integers in terms of adding, doubling, and halving and uses a logarithmic number of steps



(define (fexp b n) (e b (- n 1) 1))

(define (e b n a)
	(cond	((= n 0) a)
		((even? n) (e b (halve n) (* a (square b))))
		(else (e b (- n 1) (* a b)))))

(define (* a b) (fast a (- b 1)))

(define (fast a b)
	(cond	((= b 0) 0)
		((even? b) (+ (double a) (fast a (halve b))))
		(else (+ a (fast a (- b 1))))))

(define (square x) (* x x)) 

(define (double x) (+ x x))

(define (halve x) (/ x 2))
