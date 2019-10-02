;Checks to see if a word in a list is a palindrome
;we need to reverse each word in the list in order to check to see if it is a palindrome. 
;define will define palindrome
(define (palindrome lst)
  (if (null? lst)
      #t
      (let ((first-element (car lst))
            (last-element (car (reverse lst))))
        (and (equal? first-element
                     (if (list? last-element)
                         (reverse last-element)
                         last-element))
             (palindrome (get-middle lst))))))

(define (get-middle lst)
  (if (null? (cdr lst))
      '()
      (reverse (cdr (reverse (cdr lst))))))
;To test this code out go on repl.it and copy and paste the code. You can test this code out by typing in 
(palindrome '(m e r g e))
and that will result in a #f 
Test this one out also (palidrome '(r a c e c a r)
This should output a #t
