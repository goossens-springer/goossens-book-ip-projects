sed -i -e '1,$s?^#include \"\(.*\).hex\"?#include \"'$PWD'/\1.hex\"?' helloworld*.c
