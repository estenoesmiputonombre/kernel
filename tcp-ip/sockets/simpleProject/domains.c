#include <stdio.h>
#include <sys/socket.h>

int main() {
    printf("Name\tPurpose\tValue\tMan page\n");
    printf("AF_UNIX\tLocal comunication\t%d\tunix(7)\n", AF_UNIX);
    printf("AF_LOCAL\tSynonym for AF_UNIX\t%d\tunix(7)\n", AF_LOCAL);
}
