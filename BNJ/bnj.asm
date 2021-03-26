0: CP 200 120 // argument1 copy
1: CP 201 121 // argument2 copy
2: CPi 110 4  // return adress copy
3: BZJi 150 0 // goto bnj Function
4: BZJi 5 0   // END
5: 4

110: 0 //RETURN ADDRESS

150: 250

120: 2 // argument1
121: 2 // argument2
122: 4 // Jump Adress

250: NAND 200 200 // bnj Function Entry Point
251: ADDi 200 1
252: ADD 200 201
253: BZJ 122 200
254: BZJi 110 0
