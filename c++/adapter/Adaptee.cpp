#include "Adaptee.h"
#include <stdio.h>

Adaptee::Adaptee()
{

}

Adaptee::~Adaptee()
{

}

void Adaptee::specificRequest()
{
	fprintf(stderr, "this is specificRequest\n");
}
