#include <iostream>
using namespace std;

int add(int a, int b)
{
	return a + b;
}

double add(double a, double b)
{
	return a + b;
}

int main()
{
	add(1,2);
	add(1.2, 2.2);
}
