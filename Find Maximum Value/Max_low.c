max = x;
tmp = y;
tmp = tmp < x;
if(tmp == 0) goto Change1;
	END: goto END;
Change1: max = y;
goto END;
