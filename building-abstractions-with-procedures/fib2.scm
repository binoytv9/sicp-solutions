	; An iterative process for computing the Fibonacci numbers


(define (fib n) (fibonacci 0 1 (- n 1)))

(define (fibonacci a b n)
	(if (< n 0)
		a
		(fibonacci b (+ a b) (- n 1))))
