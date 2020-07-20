#include "calculator.h"

int Calculator::Add (double a, double b)
{
	return a + b + 0.5;
}

int Calculator::Sub (double a, double b)
{
    return Add (a, -b);
}

int Calculator::Mul (double a, double b)
{
    return a * b + 0.5;
}

int Calculator::Div(double a, double b)
{
	if (b!=0)
		return Mull(a, 1.0/b);
}

int Calculator::Round(double a)
{
	if ((a - (int)a)>0.5)
	{
		return (a + 0.5);
	}else
	{
		return a;
	}
}
