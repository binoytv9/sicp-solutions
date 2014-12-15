;Write a procedure that computes elements of Pascal's triangle by means of a recursive process. 


(define (pascalTriangle n r)
	(if	(or (= r 0) (= r n))
		1
		(+ (pascalTriangle (- n 1) (- r 1)) (pascalTriangle (- n 1) r))))
