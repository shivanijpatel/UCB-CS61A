;;;;;;;;;;;;;;;
;; Questions ;;
;;;;;;;;;;;;;;;

; Scheme

(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cdr (cdr s)))
)

(define (sign x)
  (cond((< x 0)'-1)
  ((= x 0)'0)
  ((> x 0)'1))
)

(define (square x) (* x x))

(define (pow b n)
  (cond
    ((= n 0) 1)
    ((even? n) (square(pow b (/ n 2))))
    (else (* b (square (pow b (/ (- n 1) 2)))))
  )
)

(define (unique s)
  (if (null? s)
    nil
    (cons
      (car s)
      (unique
        (filter
          (lambda (x) (not (eq? x (car s))))
          (cdr s))))))
