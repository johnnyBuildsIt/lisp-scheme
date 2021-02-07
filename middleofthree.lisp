(define (middleofthree a b c)
	(cond ((and (> b a)(< b c)) b)
		  ((and (> c a)(< c b)) c)
		  (else a)))

(middleofthree 2 3 1)