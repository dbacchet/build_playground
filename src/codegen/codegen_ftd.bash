#!/bin/bash 

# dummy function that sleeps for some time and then creates a file
codegen_function() {
    sleep_time=$1
    struct_name=$2
    file_name=$3

    sleep ${sleep_time}
    # echo "file name: " $file_name

    cat >${file_name}.h <<EOL
#pragma once

struct ${struct_name} {
    int value = 0;
    double value2 = 1.1;
};

${struct_name} create_${struct_name}();
EOL

    cat >${file_name}.cpp <<EOL
#include "$(basename $file_name).h"

${struct_name} create_${struct_name}() {
    return ${struct_name}();
};
EOL

}


FILE_PATH=$1
DELAY=$2
OUTPUT_PATH=$3

# echo ${FILE_PATH}
# echo ${DELAY}

while read line;
do
    tokens=(${line})
    struct_name=${tokens[0]}
    file_name=$OUTPUT_PATH/${tokens[1]}
    # echo $struct_name
    # echo $file_name
    mkdir -p "$(dirname "$file_name")"
    codegen_function ${DELAY} ${struct_name} ${file_name}
done < ${FILE_PATH}
