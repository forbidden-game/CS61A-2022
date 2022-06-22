(define (cddr s) (cdr (cdr s)))

(define (cadr s)
  (car (cdr s)))

(define (caddr s)
  (car (cdr (cdr s))))

(define (ascending? lst)
  (cond ((null? (cdr lst)) #t)
    ((= (car lst) (cadr lst)) (ascending? (cdr lst)))
    ((< (car lst) (cadr lst)) (ascending? (cdr lst)))
    (else #f)))

(define (interleave lst1 lst2) 'YOUR-CODE-HERE)

(define (my-filter func lst) 'YOUR-CODE-HERE)

(define (no-repeats lst) 'YOUR-CODE-HERE)
