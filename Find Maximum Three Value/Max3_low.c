max = x;
tmp1 = y;
tmp2 = z;
tmp1 = tmp1 < x;
if (tmp1==0) goto Change1;
Change3: tmp2 = tmp2 < max;
if (tmp2==0) goto Change2;
END:

Change1: max = y;
goto Change3;
Change2: max = z;
END:
