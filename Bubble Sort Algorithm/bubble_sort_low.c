SIZE = 10;

a[0] = 7;
a[1] = 3;
a[2] = 0;
a[3] = 6;
a[4] = 1;
a[5] = 4;
a[6] = 9;
a[7] = 8;
a[8] = 5;
a[9] = 2;

k = 0;
m = 0; 
tmp;

WHILE1:
tmp1 = k;
tmp1 = tmp1 < SIZE;
if(tmp1==0) goto END_WHILE1;
m = 0;
WHILE2:
tmp2 = m;
tmp3 = SIZE;
tmp3_1 = k;
tmp3_1 = -tmp3_1-1;
tmp3 = tmp3 + tmp3_1;
tmp2 = tmp2 < tmp3;
if(tmp2==0) goto END_WHILE2;
tmp4_1 = a;
tmp4_1 = tmp4_1 + m;
tmp4 = *(tmp4_1);
tmp5_1 = tmp4_1++;
tmp5 = *(tmp5_1);
tmp5 = tmp5 < tmp4;
if(tmp5==0) goto inc_m; 
tmp = *(tmp4_1);
*(tmp4_1) = *(tmp5_1);
*(tmp5_1) = tmp;

inc_m: m = m + 1;
goto WHILE2:
END_WHILE2: goto inc_k;

inc_k: k = k + 1;
goto WHILE1:
END_WHILE1: goto END_WHILE1;
