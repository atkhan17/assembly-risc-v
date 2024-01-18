; Finds maximum element in array

; int arr[] = [123, 33, -5, 242, -45, -12]
; int max = arr[0]
; for (x : arr) {
;	max > x ? max = x : max = max	
; }

;x3 stores value of current element in array
;x2 stores value of current max

DD 123, 33, -5, 242, -45, -12, 0

addi x1, x0, 0
addi x7, x0, 0

ld x2, 0(x1)

loop:	ld x3, 8(x1)
	beq x3, x0, end
	
	bge x2, x3, small

	addi x1, x1, 8
	jal x0, loop

small:	addi x2, x3, 0
	addi x7, x1, 8
	addi x1, x1, 8
	jal x0, loop	
	 
end:	ld x5, 0(x0)
	sd x5, 0(x7)
	sd x2, 0(x0)
