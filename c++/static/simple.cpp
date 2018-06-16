#include <iostream>
using namespace std;
class exam
{
public:
	static int a;
	int b;
	static void print_aaddr()
	{
		cout << &a << endl;
	}

	void print_baddr()
	{
		cout << &b << endl;
	}
};

int exam::a=0;

int main()
{
	exam c1, c2;
	c1.print_aaddr();
	c2.print_aaddr();
	c1.print_baddr();
	c2.print_baddr();

	return 0;
}
