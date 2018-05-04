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
			(equal N '(A))
			'(Alfa)
	   )
	   (
			(equal N '(B))
			'(Bravo)
	   )
	   (
			(equal N '(C))
			'(Charlie)
	   )
	   (
			(equal N '(D))
			'(Delta)
	   )
	   (
			(equal N '(E))
			'(Echo)
	   )
		  (
			(equal N '(F))
			'(Foxtrot)
	   )
		  (
			(equal N '(G))
			'(Golf)
	   )
		  (
			(equal N '(H))
			'(Hotel)
	   )
		  (
			(equal N '(I))
			'(India)
	   )
		  (
			(equal N '(J))
			'(Juliet)
	   )
		  (
			(equal N '(K))
			'(Kilo)
	   )
		  (
			(equal N '(L))
			'(Lima)
	   )
		  (
			(equal N '(M))
			'(Mike)
	   )
		  (
			(equal N '(N))
			'(November)
	   )
		  (
			(equal N '(O))
			'(Oscar)
	   )
		  (
			(equal N '(P))
			'(Papa)
	   )
		  (
			(equal N '(Q))
			'(Quebec)
	   )
		  (
			(equal N '(R))
			'(Romeo)
	   )
		  (
			(equal N '(S))
			'(Sierra)
	   )
		  (
			(equal N '(T))
			'(Tango)
	   )
		  (
			(equal N '(U))
			'(Uniform)
	   )
	   (
			(equal N '(V))
			'(Victor)
	   )
	   (
			(equal N '(W))
			'(Whiskey)
	   )
	   (
			(equal N '(X))
			'(Xray)
	   )
	   (
			(equal N '(Y))
			'(Yankee)
	   )
	   (
			(equal N '(Z))
			'(Zulu)
	   )
   )
)

(defun NATOToLetter (N)
	(cond
		(
			(equal N '(ALFA))
			'(A)
		)
		(
			(equal N '(BRAVO))
			'(B)
		)
		(
			(equal N '(CHARLIE))
			'(C)
		)
		(
			(equal N '(DELTA))
			'(D)
		)
		(
			(equal N '(ECHO))
			'(E)
		)
		(
			(equal N '(FOXTROT))
			'(F)
		)
		(
			(equal N '(GOLF))
			'(G)
		)
		(
			(equal N '(HOTEL))
			'(H)
		)
		(
			(equal N '(INDIA))
			'(I)
		)
		(
			(equal N '(J))
			'(JULIET)
		)
		(
			(equal N '(KILO))
			'(K)
		)
		(
			(equal N '(MIKE))
			'(M)
		)
		(
			(equal N '(NOVEMBER))
			'(N)
		)
		(
			(equal N '(OSCAR))
			'(O)
		)
		(
			(equal N '(PAPA))
			'(P)
		)
		(
			(equal N '(QUEBEC))
			'(Q)
		)
		(
			(equal N '(ROMEO))
			'(R)
		)
		(
			(equal N '(SIERRA))
			'(S)
		)
		(
			(equal N '(TANGO))
			'(T)
		)
		(
			(equal N '(UNIFORM))
			'(U)
		)
		(
			(equal N '(VICTOR))
			'(V)
		)
		(
			(equal N '(WHISKEY))
			'(W)
		)
		(
			(equal N '(XRAY))
			'(X)
		)
		(
			(equal N '(YANKEE))
			'(Y)
		)
		(
			(equal N '(ZULU))
			'(Z)
		)
	)

)