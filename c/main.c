#include <stdio.h>
#include <string.h>

void print_binary(const char* text);
void print_binary_char(char text);
void print_hex(const char* text);

int main(int argc, char** argv)
{
    if (argc > 1) {
        print_binary(argv[1]);
        puts("");
        print_hex(argv[1]);
    }
    else {
        printf("Usage: binutil <text>\n");
    }

    return 0;
}

void print_hex(const char* text)
{
    size_t len = strlen(text);
    printf("Hex:\n");
    for (size_t i = 0; i < len; i++) {
        printf("%x ", text[i]);
    }
    puts("");
}

void print_binary_char(char c)
{
    for (int i = 7; i >= 0; i--) {
        printf("%d", (c >> i) & 1);
    }
    printf(" ");
}

void print_binary(const char* text)
{
    size_t len = strlen(text);
    printf("Binary:\n");
    for (size_t i = 0; i < len; i++) {
        print_binary_char(text[i]);
    }
    puts("");
}
