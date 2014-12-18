;Define a better version of make-rat that handles both positive and negative arguments. Make-rat should normalize the sign so that if the rational number is positive, both the numerator and denominator are positive, and if the rational number is negative, only the numerator is negative.


(define (make-rat n d)
	(let ((g (gcd n d)))
		(cond ((and (< n 0) (< d 0)) (cons (/ (abs n) g) (/ (abs d) g)))
		      ((< d 0) (cons (/ (* -1 n) g) (/ (abs d) g)))
		      (else (cons (/ n g) (/ d g))))))

(define (numer x) (car x))
(define (denom x) (cdr x))


(define (add-rat x y)
	(make-rat (+ (* (numer x) (denom y)) (* (numer y) (denom x))) 
		  (* (denom x) (denom y))))

(define (sub-rat x y)
	(make-rat (- (* (numer x) (denom y)) (* (numer y) (denom x)))
		  (* (denom x) (denom y))))

(define (mul-rat x y)
	(make-rat (* (numer x) (numer y))
		  (* (denom x) (denom y))))

(define (div-rat x y)
	(make-rat (* (numer x) (denom y))
		  (* (denom x) (numer y))))

(define (equal-rat? x y)
	(= (* (numer x) (denom y))
	   (* (numer y) (denom x))))

(define (print-rat x)
	(newline)
	(display (numer x))
	(display "/")
	(display (denom x)))
