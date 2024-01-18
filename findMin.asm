; Finds minimum element in array

; int arr[] = [-1, 55, -3, 7]
; int min = arr[0]
; for (x : arr) {
;	min > x ? min = x : min = min	
; }

;x3 stores value of current element in array
;x2 stores value of current min

DD -1, 55, -3, 7, 0

ld x2, 0(x0)

loop:	ld x3, 8(x1)
	beq x3, x0, end
	
	bge x2, x3, big

	addi x2, x3, 0
	addi x1, x1, 8
	beq x0, x0, loop

big:	addi x1, x1, 8
	beq x0, x0, loop
	 
end:	addi x5, x2, 0