#include <iostream>
#include <cstdlib>
#include <cmath>
#include <ctime>

double function(double x); 
double diff(double (*f)(double), double x)
{
	return (f(x+1.0E-6)-f(x)) / 1.0E-6;
}

double nt(double (*f)(double), unsigned int times = 1000)
{
	srand(time(NULL));
	double start_x = (double)rand();
	for (unsigned int i = 0; i < times; ++i) {
		double df = diff(f, start_x);
		//printf("%f\n", df);
		if (df - 0.0 < 1.0E-8) {
			start_x = (double)rand();
			continue;
		}
		start_x = -f(start_x) / df + start_x;
	}
	return start_x;
}

int main()
{
	double x;
	std::cout << "x = " << (x = nt(function)) << '\n';
	std::cout << "y = " << function(x) << '\n';
	return 0;
}
