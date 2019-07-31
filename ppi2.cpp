
#include <iostream>
#include <vector>

using namespace std;

int main() {
    vector<int> vec;
    vec.push_back(42);
    vec.push_back(53);
    vec.push_back(86);
    vec.push_back(75);
    
    for (auto i = vec.begin(); i != vec.end(); ++i) {
        cout << (*i) << endl;
    }
}

