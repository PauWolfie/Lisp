; Variable assignment
(setf x 10)
(setf text "Hello world")
(setf check T)
(setf uncheck NIL)

; Multiple assignment
(multiple-value-bind (a b c) (list 1 2 3))

; -------------------------------------------------

; Conditionals
(if (> x y)
    (print "x greater than y (x > y)")
    (print "x less than or equal to y (x >= y)"))

; Conditionals concat
(cond ((= x 0) (print "x is zero"))
      ((> x 0) (print "x is positive"))
      ((< x 0) (print "x is negative")))

; Switch-case
(defun greeting (name)
  (case name
    (("John")
     (print "Hi John!"))

    (("Jane")
     (print "Hi Jane!"))

    (otherwise
     (format t "Hi stranger!"))))


; -------------------------------------------------

; While Loops
 (while (<= i 5)
    (print i)
    (setf i (+ i 1)))

; For Loops
(loop for i from 1 to 5 do
  (print i))

; -------------------------------------------------

; Functions 
(defun suma (a b)
  (+ a b))

(suma 2 3)


(defun factorial (n)
  (if (<= n 1)
      1
      (* n (factorial (- n 1)))))

; -------------------------------------------------

; Hello world
(defun hello (name)
  (print (concatenate 'string "Hello " name "!")))

(hello "John")


; Calculator
(defun add (a b)
  (+ a b))

(defun subtract (a b)
  (- a b))

(defun multiply (a b)
  (* a b))

(defun divide (a b)
  (/ a b))

(print "Wellcome to calculator")
(let ((a (read-from-string (print "Enter the first number:")))
    (b (read-from-string (print "Enter the second number:")))
    (op (read-from-string (print "Choose the operation (+, -, *, /): "))))
(case op
    ((+) (format t "The result is: ~a~%" (add a b)))
    ((-) (format t "The result is: ~a~%" (subtract a b)))
    ((*) (format t "The result is: ~a~%" (multiply a b)))
    ((/) (format t "The result is: ~a~%" (divide a b)))
    (otherwise (print "Unrecognized operation."))))
