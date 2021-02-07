(define (maxofthree a b c)
	(max (max a b) c))

(define (middle a b c)
	(max (min a b) (min (max a b) c)))

(define (square x)
	(* x x))

(define (sumofsquares a b)
	(+ (square a) (square b)))

(define (sumofsquarestwogreatest a b c)
	(sumofsquares (maxofthree a b c) (middle a b c)))

(sumofsquarestwogreatest 1 2 3)
