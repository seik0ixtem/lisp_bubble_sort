;;; wow, bubble sort finally

(defun bubble_move (l)

  (cond
   ((atom (cdr l)) l)
   ((> (car l) (cadr l)) (cons (cadr l) (bubble_move (cons (car l) (cddr l)))))
   (T l)
  )
)



(defun bubble (l)

  (cond

   ((atom (cdr l)) l)

   (T (bubble_move (cons (car l) (bubble (cdr l)))))

  )

)



;;; вызов сортировки

(bubble '(5 4 3 2 1))