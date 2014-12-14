;Newton's method for cube roots is based on the fact that if y is an approximation to the cube root of x, then a better approximation is given by the value 
;	(x / y^2 + 2y) / 3


(define (croot x) (cube-root 0.0 1.0 x))

(define (cube-root pre-guess guess x)
	(if (good-enough? pre-guess guess)
		guess
		(cube-root guess (improve-guess guess x) x)))

(define (good-enough? pre-guess guess)
	(< (abs (- pre-guess guess)) 0.0001))

(define (improve-guess guess x)
	(/ (expr x guess) 3))

(define (expr x y)
	(+ (/ x (square y)) (* 2 y)))

(define (square x) (* x x))
