	; exponentiation using iterative method


(define (e b n) (exp2 b n 1))

(define (exp2 b counter out)
	(if (= counter 0)
		out
		(exp2 b (- counter 1) (* out b))))
