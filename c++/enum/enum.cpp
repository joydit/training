#include <iostream>
using namespace std;

class Cage {
 public:
	enum Bird {
		Nightingal, Sparrow
	};

	Cage(Bird bird):f_bird(bird) {
	}

	Bird getBird() {
		return f_bird;
	}
 private:
	Bird f_bird;
};

int main()
{
	Cage::Bird my_pet = Cage::Sparrow;
	cout << "my_pet " << (int)my_pet << "\n\n";

	Cage cage(Cage::Nightingal);
	cout << "cage bird: " << (int)cage.getBird() << "\n\n";

	return 0;
}
