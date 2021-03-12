0: CP 200 101   // max = x
1: CP 201 102   // tmp = y
2: LT 201 101   // tmp = tmp < x
3: BZJ 10 201   // if(tmp == 0) goto Change1
4: BZJi 11 0    // END:
5: CP 200 102   // max = y
6: BZJi 10 1    // END:

10: 5           // Change1
11: 4

101: 522 // x
102: 500 // y

200: 0   // max
201: 0   // tmp
