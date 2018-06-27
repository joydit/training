#include <iostream>
#include <cstdlib>

using namespace std;

class base
{
	int a;
public:
	base()
	{
		cout << "hello" << endl;
	}
};

main()
{
	base *p=(base *)malloc(sizeof(base));
	base *q=new base;
}


