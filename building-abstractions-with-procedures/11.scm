; A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process


; recursive process
(define (f n)
	(if (< n 3)
		n
		(+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


; iterative process
(define (f-iter n) (f2 n 0 3))

(define (f2 n sum count)
	(cond	((= count 0) sum)
		((< n 3) n)
		(else (f2 n (+ sum (* count (f2 (- n count) 0 3))) (- count 1)))))
