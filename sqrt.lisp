(define (square x)
	(* x x))

(define (improve-guess guess quotient)
	(/ (+ guess quotient) 2))

(define (good-enough? guess actual)
	(< (abs (- actual (square guess))) .001))

(define (sqrt-recursive guess input)
	(if (good-enough? guess input)
		guess
		(sqrt-recursive (improve-guess guess (/ input guess)) input)))

(define (sqrt-solver x)
	(sqrt-recursive 1.0 x))

(sqrt-solver 7)