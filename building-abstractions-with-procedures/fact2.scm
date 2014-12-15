	;A linear iterative process for computing n!


(define (fact n) (factorial 1 1 n))

(define (factorial product counter n)
	(if (> counter n)
		product
		(factorial (* product counter) (+ counter 1) n)))
