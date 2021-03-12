max = x;

if(x < y)
{
	max = y;
	if(y < z)
		max = z;
}

else if (x < z)
{
	max = z;
	if(z < y)
		max = y;
}