#include "unp.h"

int
main(int argc, char **argv)
{
    int sockfd, n;
    char recvline[MAXLINE + 1];
    struct sockaddr_in servaddr;    

    if (argc != 2)
        err_quit("Usage: a.out <IPaddress>");
    if ( (sockfd = socket(AF_INET, SOCK_STREAM)) < 0 )
        err_sys("socket error");
    bzero(&servaddr, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(13); //daytime server
}
