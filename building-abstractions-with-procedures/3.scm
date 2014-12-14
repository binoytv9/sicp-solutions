;Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.


(define (sqr x) (* x x))

(define (sos a b) (+ (sqr a) (sqr b)))

(define (sum a b c)
	(cond	((> a b c) (sos a b))
		((> a c b) (sos a c))
		((> b a c) (sos b a))
		((> b c a) (sos b c))
		((> c a b) (sos c a))
		((> c b a) (sos c b))
		(else (sos a b)) ))
