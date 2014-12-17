(define (integral f a b n)
	(define (add-h x) (+ x (/ (- b a) n)))
	(* (sum f a add-h b) (/ (- b a) n)))

(define (cube x) (* x x x))

(define (sum term a next b)
	(if (> a b)
		0
		(+ (term a) (sum term (next a) next b))))
