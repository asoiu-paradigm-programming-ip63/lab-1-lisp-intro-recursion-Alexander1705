;;;; LAB 1

; Task 1
; Output: (Z (R) U)

((lambda (A B C)
	(LIST
		(CAR A)
		(CAR B)
		(CAR C)))
	'(Z X C S A D F)
	'((R) (30) (3) 23)
	'(U I 8 9 6 5 4 3 (1 2 3)))

; Task 2
; Output: (A 23 5)

(DEFUN compose (A B C)
	(LIST
		(NTH 4 A)
		(NTH 3 B)
		(NTH 5 C)))
(compose
	'(Z X C S A D F)
	'((R) (30) (3) 23)
	'(U I 8 9 6 5 4 3 (1 2 3)))

; Task 3
;
; > (task3 '(1 2 3 4 5 6))
; (1 4 9 4 5 6)
;
; > (task3 '(2 3 4 5 6))
; (8 27 64 5 6)

(DEFUN task3 (L)
	(IF (= (MOD (FIRST L) 2) 1)
		(APPEND
			(LIST
				(EXPT (NTH 0 L) 2)
				(EXPT (NTH 1 L) 2)
				(EXPT (NTH 2 L) 2))
			(CDDDR L))
		(APPEND
			(LIST
				(EXPT (NTH 0 L) 3)
				(EXPT (NTH 1 L) 3)
				(EXPT (NTH 2 L) 3)
				)
			(CDDDR L))))
