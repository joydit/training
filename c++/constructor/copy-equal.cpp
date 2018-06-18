#include<iostream>
#include<vector>
#include<string>
using namespace std;
class A {
private:
	int a;
public:
	int getA() {
		return a;
	} 
	A() {
		a = 1;
		cout << "构造函数..." << endl;
	}

	A(const A & b) {
		this->a = b.a;
		cout << "拷贝构造函数..." << endl;
	}

	void operator=(const A & b) {
		this->a = b.a + 1;
		cout << "=重载.." << endl;
	}
};

int main()
{
	A a;
	cout << a.getA() << endl;
	A b = a;
	cout << b.getA() << endl;
	A c;
	c = a;
	cout << c.getA() << endl;
	return 0;
}
