#include <iostream>
#include "calculator.h"

int main()
{
    Calculator calc;
    double x = 3.2, y = 1.7;
    std::cout << "Add(" << x << ", " << y << ") = " << calc.Add(x,y) << "\n";
    std::cout << "Sub(" << x << ", " << y << ") = " << calc.Sub(x,y) << "\n";
    return 0;
}
