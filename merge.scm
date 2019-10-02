;Go on repl.it to test this code out.
;Merge will merge two lists that are already sorted together.
;Make sure the numbers that are being inputted are already sorted or it will not come out right.
;define will define the merge method
(define (merge list1 list2)
  (cond ((null? list1) list2) ;checks the condition of list1 if it's null or not
        ((null? list2) list1) ;checks the condition of list2 if it's null or not
        ((> (car list1) (car list2))
         (cons (car list2) (merge list1 (cdr list2))))
        (else
         (cons (car list1) (merge (cdr list1) list2)))))
;Type out (merge '(1 2 3 4 5) '(5 6 7 7 8 8 8)) to test it out. 
