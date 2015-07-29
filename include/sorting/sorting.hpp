#include <iostream>
using namespace std;
class SortingFactory
{
// private:

public:
    SortingFactory(void);
    ~SortingFactory(void);
    void sort(double* inList);
    void quicksort(double* inList, int start, int end);
};
