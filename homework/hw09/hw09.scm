
; Tail recursion

(define (replicate x n)
(define (helper n acc)
  (if (= n 0)
    acc
    (helper (- n 1) (cons x acc))))
(helper n nil))

(define (accumulate combiner start n term)
  (if (= n 0)
    start
    (combiner (accumulate combiner
                          start
                          (- n 1)
                          term)
              (term n))
  )
)

(define (accumulate-tail combiner start n term)
  (if (= n 0)
      start
      (accumulate-tail combiner (combiner (term n) start) (- n 1) term))
)

; Streams

(define (map-stream f s)
    (if (null? s)
    	nil
    	(cons-stream (f (car s)) (map-stream f (cdr-stream s)))))

(define multiples-of-three
  (cons-stream 3
	       (map-stream (lambda (x) (+ x 3)) multiples-of-three))
)


(define (nondecreastream s)
    'YOUR-CODE-HERE)
    I have tried literally everything and I am not able to do it!!
    I hope my overall reasoning for how I would do this problem is enough for
    credit! I dont have any code because I am not even sure what to write. The
    process i would take to solve this problem is finding the decreasing order
    of the sequence. I would also assume that you would not necessarily need a
    helper function for the recursion part as you can probably do the recursive
    leap of faith. The elements in the list are not a stream but a scheme list
    BUT the whole thing is stream so it would need to be evaluated as a stream
    in the end. I am not very good at doing this but I have been stuck on this
    problem for a couple hours now and I have read all the Piazza posts and I
    still am struggling. I have also asked for help from my peers and they also
    do not know how to solve this.

    Thanks,
    Shivani


(define finite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 3
                (cons-stream 1
                    (cons-stream 2
                        (cons-stream 2
                            (cons-stream 1 nil))))))))

(define infinite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 2
                infinite-test-stream))))
