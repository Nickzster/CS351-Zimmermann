(defun helloWorld(list)
	(setf list '(1 2 3))
)

(defun addTest (aList)
	(cond
	(
		(null aList)
		aList
	)
	(
		(atom aList)
		(error "add applies only to lists!")
	)
	(t
		(append
			(list (* (car aList) 2))
			(addTest (cdr aList))
		)
	)
	)
)

(defun myreverse (x)
	(cond 
		(
			(null x) 
			x
		)
		(
			(atom x) 
			(error "reverse applies only to lists")
		)
		(t 
			(append 
				(myreverse (cdr x)) 
				(list (car x))
			)
		)
	)
)


(defun conve (liste)
	(cond
	(
		(null liste)
		liste
	)
	(
		(atom liste)
		(error "conve applies only to lists!")
	)
	(t
		(append
			(list (letterToNATO (list (car liste))))
			(conve (cdr liste))
		)
	)
	)
)

;(defun convn (listn)

;)

(defun letterToNATO (N)
   (cond 
	   (
			(eql N 'A)
			'(Alfa)
	   )
	   (
			(eql N 'B)
			'(Bravo)
	   )
	   (
			(eql N 'C)
			'(Charlie)
	   )
	   (
			(eql N 'D)
			'(Delta)
	   )
	   (
			(eql N 'E)
			'(Echo)
	   )
		  (
			(eql N 'F)
			'(Foxtrot)
	   )
		  (
			(eql N 'G)
			'(Golf)
	   )
		  (
			(eql N 'H)
			'(Hotel)
	   )
		  (
			(eql N 'I)
			'(India)
	   )
		  (
			(eql N 'J)
			'(Juliet)
	   )
		  (
			(eql N 'K)
			'(Kilo)
	   )
		  (
			(eql N 'L)
			'(Lima)
	   )
		  (
			(eql N 'M)
			'(Mike)
	   )
		  (
			(eql N 'N)
			'(November)
	   )
		  (
			(eql N 'O)
			'(Oscar)
	   )
		  (
			(eql N 'P)
			'(Papa)
	   )
		  (
			(eql N 'Q)
			'(Quebec)
	   )
		  (
			(eql N 'R)
			'(Romeo)
	   )
		  (
			(eql N 'S)
			'(Sierra)
	   )
		  (
			(eql N 'T)
			'(Tango)
	   )
		  (
			(eql N 'U)
			'(Uniform)
	   )
	   (
			(eql N 'V)
			'(Victor)
	   )
	   (
			(eql N 'W)
			'(Whiskey)
	   )
	   (
			(eql N 'X)
			'(Xray)
	   )
	   (
			(eql N 'Y)
			'(Yankee)
	   )
	   (
			(eql N 'Z)
			'(Zulu)
	   )
   )
)
.
(defun NATOToLetter (N)
	(cond
		(
			(eql N '(ALFA))
			'(A)
		)
		(
			(eql N '(BRAVO))
			'(B)
		)
		(
			(eql N '(CHARLIE))
			'(C)
		)
		(
			(eql N '(DELTA))
			'(D)
		)
		(
			(eql N '(ECHO))
			'(E)
		)
		(
			(eql N '(FOXTROT))
			'(F)
		)
		(
			(eql N '(GOLF))
			'(G)
		)
		(
			(eql N '(HOTEL))
			'(H)
		)
		(
			(eql N '(INDIA))
			'(I)
		)
		(
			(eql N '(J))
			'(JULIET)
		)
		(
			(eql N '(KILO))
			'(K)
		)
		(
			(eql N '(MIKE))
			'(M)
		)
		(
			(eql N '(NOVEMBER))
			'(N)
		)
		(
			(eql N '(OSCAR))
			'(O)
		)
		(
			(eql N '(PAPA))
			'(P)
		)
		(
			(eql N '(QUEBEC))
			'(Q)
		)
		(
			(eql N '(ROMEO))
			'(R)
		)
		(
			(eql N '(SIERRA))
			'(S)
		)
		(
			(eql N '(TANGO))
			'(T)
		)
		(
			(eql N '(UNIFORM))
			'(U)
		)
		(
			(eql N '(VICTOR))
			'(V)
		)
		(
			(eql N '(WHISKEY))
			'(W)
		)
		(
			(eql N '(XRAY))
			'(X)
		)
		(
			(eql N '(YANKEE))
			'(Y)
		)
		(
			(eql N '(ZULU))
			'(Z)
		)
	)

)