0: CP 30 41   // tmp = arry;
1: CPI 42 30  // max = *(tmp);
2: CP 30 40   // tmp = index;
3: LT 30 90   // tmp = tmp < SIZE;
4: BZJ 17 30  // if(tmp == 0) goto END_WHILE1;
5: CP 31 42   // tmp2 = max;
6: CP 30 41
7: ADD 30 40 
8: CPI 32 30  // tmp3 = arry[index];
9: LT 31 32   // tmp2 = tmp2 < tmp3;
10: BZJ 43 31 // if(tmp2 == 0) goto END_IF;
11: CP 42 32  // max = arry[index];
12: CP 285 40 // maxIndex = index;
13: ADDi 40 1 // index = index + 1; 
14: BZJi 15 0 // goto WHILE1;
15: 2
16: BZJi 17 0 // END_WHILE1: goto END_WHILE1;
17: 16

30: 0     // tmp
31: 0     // tmp2
32: 0     // tmp3

40: 1     // index
41: 100   // arry
42: 0     // max
43: 13    // END_IF

90: 25    // SIZE

100: 19   // first element of array 
101: 13   
102: 22
103: 43
104: 35
105: 67
106: 58
107: 79
108: 18
109: 26
110: 33
111: 41
112: 51
113: 60
114: 81
115: 59
116: 63
117: 77
118: 83
119: 33
120: 44
121: 12
122: 99
123: 22
124: 21   // last element of array

285: 0    // found greatest index
