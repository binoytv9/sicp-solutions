	;Exponentiation

(define (e b n)
	(if (= n 0)
		1
		(* b (e b (- n 1)))))
