;;Erik Ayavaca-Tirado
;;
;; Note:
;; These functions were provided by the professor when we worked on it on class together
;; Functions for a tic-tac-toe game
;;

;; ----------copy and paste functions --------------
;; (Print-board *sampleboard*)



;; Example board - represented as a list of nine markers on the
;; tic-tac-toe board

(defparameter *sampleboard* (list 'x 'x 'x '- 'o '- '- 'o '-))

;; Prints a board that is a list of nine symbols in row-major order
;;
(defun print-board (board)
  (format t "=============")
  (do ( (i 0 (+ i 1)))
      ( (= i 9) 'done)
      ;; all these expressions are evaled in order every iteration
      (if ( = (mod i 3) 0)  (format t "~%|") nil)
      (format t " ~A |" (nth i board))
  )
  (format t "~%=============")
)

;; Determines if three items are all equal to each other
(defun threequal (a b c)
  (and (equal a b) (equal b c)))

;; Determines if a list representing a row or column or diagonal
;; of a tic-tac-toe board is a victory
;; FIXME: needs to return false for three '- items in the list.
(defun victory (alist)
  (and (equal (first alist) (second alist))
       (equal (second alist) (third alist))))

;; Returns a list consisting of the nth row (zero-based) of
;; a tic-tac-toe board
(defun grab-row (board row)
  (let ((x (* 3 row)))
    (list (nth x board)
          (nth (+ x 1) board)
          (nth (+ x 2) board))
  )
)

;; Returns a list consisting of the nth column (zero-based) of
;; a tic-tac-toe board
(defun grab-col (board col)
  (list (nth col board)
        (nth (+ col 3) board)
        (nth (+ col 6) board)))

;; ----------------------------------------------------------
;; This is were I will put my own function(s) for iteration 1
;; no actual functions were created for iteration 1
;; ----------------------------------------------------------

;; Iteration 2 functions
;; ----------------------------------------------------------
