(define (search-for-primes start) (search (+ start 1) 3))

(define (search start count)
	(if (> count 0) (timed-prime-test start count)))


(define (timed-prime-test n count)
	(newline)
	(display n)
	(start-prime-test n (runtime) count))

(define (start-prime-test n start-time count)
	(if (prime n)
		(and (report-prime (- (runtime) start-time)) 
		(search (+ n 2) (- count 1)))
		(search (+ n 2) count)))

(define (report-prime elapsed-time)
	(display " *** ")
	(display elapsed-time))

(define (prime n) (= (smallest-divisor n) n))

(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
	(cond	((> (square test-divisor) n) n)
		((divides? test-divisor n) test-divisor)
		(else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b) (= (remainder b a) 0))
