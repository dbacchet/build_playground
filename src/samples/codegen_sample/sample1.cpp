#include "my_struct1.h"
#include "my_struct2.h"

#include <cstdio>

int main(int argc, char *argv[]) {
    auto s1 = create_MyStruct1();
    auto s2 = create_MyStruct2();
    s1.value = 10;
    s2.value = 11;
    return 0;
}

