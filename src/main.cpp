#include <iostream>

namespace untitled
{
    using namespace std;
    string message()
    {
        return "Hello world";
    }
    void greet()
    {
        cout << message() << endl;
    }
}

int main(int argc, char **argv)
{
    untitled::greet();
    return 0;
}
