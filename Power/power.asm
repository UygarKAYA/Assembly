0: CP 300 200 // base = x
1: CP 600 201 // exp = y
2: BZJi 305 0 // Jump to power function
3: CP 500 601 // save result to 500
4: BZJi 5 0   // END
5: 4

200: 3 // x
201: 5 // y

300: 0   // base
301: 600 // ptr = *301

305: 400 // Power
306: 420 // Multiply
307: 440 // RETURN1

360: 0xFFFFFFFD // = -3
361: 0xFFFFFFFE // = -2
362: 0xFFFFFFFF // = -1
363: 1
364: 2
365: 3

500: 0   // result

600: 0   // exp
601: 0   // return_val
602: 3   // return_addr

700: 0   // tmp
701: 0   // tmp1

// Power:
400: CPI 700 301  // tmp = stack[ptr];
401: BZJ 307 700  // if(exp == 0) Jump to RETURN1;
402: CP 701 301   // tmp1 = ptr;
403: ADD 701 363  // tmp1 = tmp1 + 1;
404: CPIi 701 300 // return_val = base;
405: ADD 700 362  // tmp = tmp - 1;
406: ADD 301 365  // ptr = ptr + 3;
407: CPIi 301 700 // stack[ptr + 3] = tmp;
408: CP 701 301   // tmp1 = ptr;
409: ADD 701 364  // tmp1 = tmp1 + 2;
410: CPIi 701 306 // stack[ptr+2] = multiply;
411: BZJi 305 0   // Jump to Power Func. for recursion

// Multiply:
420: CP 700 301   // tmp = ptr;
421: ADDi 700 4   // tmp = tmp + 4;
422: CPI 701 700  // tmp1 = stack[ptr+4];
423: MUL 701 300  // tmp1 = tmp1 * base;
424: CP 700 301   // tmp = ptr;
425: ADD 700 363  // tmp = tmp + 1;
426: CPIi 700 701 // stack[ptr+1] = return_value
427: CP 700 301   // tmp = ptr;
428: ADD 700 364  // tmp = tmp + 2;
429: CPI 701 700  // tmp1 = return_addr;
430: ADD 301 360  // ptr = ptr - 3;
431: BZJi 701 0   // return to return address in stack

// RETURN1:
440: CP 700 301   // tmp = ptr;
441: ADD 700 363  // tmp = tmp + 1;
442: CPIi 700 363 // return_val = 1;
443: ADD 301 360  // ptr = ptr - 3; 
444: CP 700 301   // tmp = ptr;
445: ADD 700 364  // tmp = tmp + 2;
446: CPI 701 700  // tmp1 = return_addr;
447: BZJi 701 0   // return to return address in stack
