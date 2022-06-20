(define (over-or-under num1 num2)
    (cond
        ((< num1 num2) -1)
        ((= num1 num2) 0)
        ((> num1 num2) 1)
    ))

(define (make-adder num)
    (lambda (inc) (+ num inc)))

(define (composed f g) 'YOUR-CODE-HERE)

(define (square n) (* n n))

(define (pow base exp) 'YOUR-CODE-HERE)
