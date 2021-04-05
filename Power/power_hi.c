int power(int base, int exp)
{
	if(exp == 0)
		return 1;
	else
		return base * power(base, exp-1);
}

int main() 
{
	int x = 3;
	int y = 5;
	int result = power(x,y);
}
