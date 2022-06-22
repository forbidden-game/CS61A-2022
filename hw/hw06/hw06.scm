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

(define (interleave list1 list2)
    (if (or (null? list1) (null? list2))
        (append list1 list2)
        (cons (car list1)
              (cons (car list2)
                    (interleave (cdr list1) (cdr list2))))))


(define (my-filter func lst)
  (if (null? lst)
    nil
    (cond ((func (car lst)) (cons (car lst) (my-filter func (cdr lst))))
        (else (my-filter func (cdr lst))))))

(define (no-repeats s)
  (if (null? s)
    nil
    (cons
      (car s)
      (no-repeats (my-filter (lambda (x) (not (eq? x (car s)))) (cdr s))))))
