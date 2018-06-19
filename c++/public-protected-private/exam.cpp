#include <iostream>
using namespace std;

class base1
{
private:
	int private_a;
protected:
	int protected_b;
public:
	int public_c;
	void base1_func()
	{
		cout << private_a << protected_b << public_c << endl; 
	}
};

class derived1 : public base1
{
	void derived1_func()
	{
		cout << private_a << endl;
		cout << protected_b << endl;
		cout << public_c << endl; 
	}
};

class other
{
	base1 b1;
	void other_func()
	{
		cout << b1.private_a << endl;
		cout << b1.protected_b << endl;
		cout << b1.public_c << endl; 
	}
};

int main()
{
	
}

