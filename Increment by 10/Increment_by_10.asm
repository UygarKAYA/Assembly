0: CP 16 15    // tmp = k;
1: LT 16 100   // tmp = tmp < size;
2: BZJ 12 16   // if(tmp = 0) goto END_WHILE;
3: CP 16 300 
4: ADD 16 15 
5: CPI 17 16   // tmp2 = *(a+k);
6: ADDi 17 10  // tmp2 = tmp2 + 10;
7: CPIi 16 17  // *(a+k) = tmp2;
8: ADDi 15 1   // k = k + 1;
9: BZJi 10 0   // goto WHILE:
10: 0
11: BZJi 12 0  // END_WHILE: goto END_WHILE;
12: 11

15: 0    // k
16: 0    // tmp
17: 0    // tmp2

100: 2   // size

300: 400 // a

400: 137 // first element of array 
401: 224 // last element of array 
