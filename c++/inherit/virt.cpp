#include <iostream>
using namespace std;  

class A  
{  
public:  
    void virtual function2()  
    {  
        cout<<"这是基类的虚函数function2\n";  
    }  
};  

class B:public A  
{  
public:  
    void function2()  
    {  
        cout<<"这是派生类的函数function2\n";  
        //A::function2();  
    }  
};  
  
int main()  
{  
    A *a;  
    a=new B;
    B b1;
    A &a1=b1;
    a->function2();
    a1.function2();
}
