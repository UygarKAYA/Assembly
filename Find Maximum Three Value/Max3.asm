0: CP 200 101  // max = x
1: CP 201 102  // tmp1 = y
2: CP 202 103  // tmp2 = z
3: LT 201 101  // tmp1 = tmp1 < x
4: BZJ 30 201  // if (tmp1==0) goto Change1
5: LT 202 200  // tmp2 = tmp2 < max
6: BZJ 31 202  // if (tmp2==0) goto Change2
7: BZJi 8 0    // END:
8: 7
9: CP 200 102  // max = y;
10: BZJi 13 0  // goto Change3
11: CP 200 103 // max = z;
12: BZJi 13 2  // END:
13: 5

30: 9  // Change1
31: 11 // Change2   

101: 500 // x
102: 522 // y
103: 555 // z

200: 0   // max
201: 0   // tmp1
202: 0   // tmp2
