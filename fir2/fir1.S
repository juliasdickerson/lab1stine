# fir.S 
# assembly language of Finite Impulse Response (FIR)

// a0: base address of x
// a1: base address of c
// a2: base address of y, later used as pointer to y[j] in j loop
// a3: n
// a4: m

// t0: &y[n-m] to check termination of j loop
/*

    y[0] = some value
    int[] y = 0xdeadbee0
    int* y = 0xdeadbee0

    &y[0] = 0xdeadbee0
    &y[1] = 0xdeadbee4
    &y[2] = 0xdeadbee8
    ...
    &y[4] = 0xdeadbef0
    ...
    &y[n-m] = 0xdeadbe

    n-m = 16*4 =


    for (int i = 0; i < L; i++)

    int i = 0;
    while(i < L) {

        i++;
    }

      add
    forj:
      bge


      add

    donej:
*/
// t1: &c[m] to check termination of i loop
// t2: &x[j+m-1]
// t3: sum
// t4: pointer to c[i] in i loop
// t5: pointer to x[j-i+(m-1)] 
// t6: value of c[i]
// a5: value of x[j-1+(m-1)]

.global fir

fir:
    sub t0, a3, a4
    mul t0, t0, 4
    #slli t0, t0, 2
    add t0, a2, t0
    
   
loop_j:
    bge a2, t0, donej
    li t3, 0


loop_i:
    

donei:

donej:
    ret                 # all done; return	
