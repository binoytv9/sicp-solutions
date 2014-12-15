; Design a procedure that evolves an iterative exponentiation process that uses successive squaring and uses a logarithmic number of steps, as does fast-expt


(define (fexp b n) (e b (- n 1) 1))

(define (e b n a)
	(cond	((= n 0) a)
		((even? n) (e b (/ n 2) (* a (square b))))
		(else (e b (- n 1) (* a b)))))

(define (square x) (* x x)) 
