#include <iostream>
using namespace std;

class B{
public:
       int m_iNum;
       virtual void foo()
       {
       }
};

class D:public B{
    public:
       char *m_szName[100];
};

void func(B *pb)
{
    D *pd1 = static_cast<D *>(pb);
    D *pd2 = dynamic_cast<D *>(pb);

    cout << pd1 << endl;
    cout << pd2 << endl;

}

main()
{
	B *b=new B;
	B *d= new D;
	
	func(b);
	func(d);
	
}
