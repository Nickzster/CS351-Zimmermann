;======================
;Nick Zimmermann
;======================

(defun conve (list) ;conve evaulates the entire statement.

	(cond
		(
			(null list)
			list
		)
		(
			(atom list)
			(error "conve has thrown an error!")
		)
		(t
			(concatenate 'string
				(conveUtility (car list)) 
				(conve (cdr list)) 
			)
		)
	)

)

(defun conveUtility (liste) ;conveUtility evalutes each sub-list.
	(cond
		(
			(null liste)
			liste
		)
		(
			(atom liste)
			(error "conveUtility has thrown an error!")
		)
		(t
			;append needs to become a string.
;			(append 
;				(list (letterToNATO (list (car liste))))
;				(conve (cdr liste))
;			)
		(concatenate 'string 
			(letterToNATO(car liste)) 
			" " 
			(conveUtility (cdr liste)))
		)
	)
)




(defun letterToNATO (N) ;letter to NATO matches the corresponding car symbol to its correct string representation.
   (cond 
	   (
			(eql N 'A)
			"ALFA"
	   )
	   (
			(eql N 'B)
			"BRAVO"
	   )
	   (
			(eql N 'C)
			"CHARLIE"
	   )
	   (
			(eql N 'D)
			"DELTA"
	   )
	   (
			(eql N 'E)
			"ECHO"
	   )
		  (
			(eql N 'F)
			"FOXTROT"
	   )
		  (
			(eql N 'G)
			"GOLF"
	   )
		  (
			(eql N 'H)
			"HOTEL"
	   )
		  (
			(eql N 'I)
			"INDIA"
	   )
		  (
			(eql N 'J)
			"JUILET"
	   )
		  (
			(eql N 'K)
			"KILO"
	   )
		  (
			(eql N 'L)
			"LIMA"
	   )
		  (
			(eql N 'M)
			"MIKE"
	   )
		  (
			(eql N 'N)
			"NOVEMBER"
	   )
		  (
			(eql N 'O)
			"OSCAR"
	   )
		  (
			(eql N 'P)
			"PAPA"
	   )
		  (
			(eql N 'Q)
			"QUEBEC"
	   )
		  (
			(eql N 'R)
			"ROMEO"
	   )
		  (
			(eql N 'S)
			"SIERRA"
	   )
		  (
			(eql N 'T)
			"TANGO"
	   )
		  (
			(eql N 'U)
			"UNIFORM"
	   )
	   (
			(eql N 'V)
			"VICTOR"
	   )
	   (
			(eql N 'W)
			"WHISKEY"
	   )
	   (
			(eql N 'X)
			"XRAY"
	   )
	   (
			(eql N 'Y)
			"YANKEE"
	   )
	   (
			(eql N 'Z)
			"ZULU"
	   )
	   (t
			"<INVALID INPUT>"
	   )
   )
)

(defun convn (list) ;convn evaulates the entire statement.

	(cond
		(
			(null list)
			list
		)
		(
			(atom list)
			(error "conve has thrown an error!")
		)
		(t
			(concatenate 'string
				(convnUtility (car list)) 
				(convn (cdr list)) 
			)
		)
	)

)

(defun convnUtility (liste) ;convnUtility evalutes each sub-list. I know i could have used one of these utility functions, but I ran out of time.
	(cond
		(
			(null liste)
			liste
		)
		(
			(atom liste)
			(error "conveUtility has thrown an error!")
		)
		(t
			;append needs to become a string.
;			(append 
;				(list (letterToNATO (list (car liste))))
;				(conve (cdr liste))
;			)
		(concatenate 'string 
			(NATOToLetter(car liste)) 
			" " 
			(convnUtility (cdr liste)))
		)
	)
)

(defun NATOToLetter (N)
	(cond
		(
			(eql N 'ALFA)
			"A"
		)
		(
			(eql N 'BRAVO)
			"B"
		)
		(
			(eql N 'CHARLIE)
			"C"
		)
		(
			(eql N 'DELTA)
			"D"
		)
		(
			(eql N 'ECHO)
			"E"
		)
		(
			(eql N 'FOXTROT)
			"F"
		)
		(
			(eql N 'GOLF)
			"G"
		)
		(
			(eql N 'HOTEL)
			"H"
		)
		(
			(eql N 'INDIA)
			"I"
		)
		(
			(eql N 'J)
			"J"
		)
		(
			(eql N 'KILO)
			"K"
		)
		(
			(eql N 'LIMA)
			"L"
		)
		(
			(eql N 'MIKE)
			"M"
		)
		(
			(eql N 'NOVEMBER)
			"N"
		)
		(
			(eql N 'OSCAR)
			"O"
		)
		(
			(eql N 'PAPA)
			"P"
		)
		(
			(eql N 'QUEBEC)
			"Q"
		)
		(
			(eql N 'ROMEO)
			"R"
		)
		(
			(eql N 'SIERRA)
			"S"
		)
		(
			(eql N 'TANGO)
			"T"
		)
		(
			(eql N 'UNIFORM)
			"U"
		)
		(
			(eql N 'VICTOR)
			"V"
		)
		(
			(eql N 'WHISKEY)
			"W"
		)
		(
			(eql N 'XRAY)
			"X"
		)
		(
			(eql N 'YANKEE)
			"Y"
		)
		(
			(eql N 'ZULU)
			"Z"
		)
		(t
			"<INVALID INPUT>"
	    )
	)

)