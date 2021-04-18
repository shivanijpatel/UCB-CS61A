(define (partial-sums stream)
  (define (helper start strm)
    (if (null? strm) nil
      (cons-stream(+ start (car strm))
                  (helper (+ start (car strm)) (cdr-stream strm))
                  )))
  (helper 0 stream)
)
