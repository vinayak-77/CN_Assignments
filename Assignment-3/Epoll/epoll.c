#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <sys/epoll.h>
#include <errno.h>
#include <syslog.h>
#include <unistd.h>
#include <stdbool.h>
#include <ctype.h>
#include <stdint.h>
#include <time.h>
#include <stdbool.h>

#define ll long long


ll factorial(int num){
	ll ans = 1;
	if(num<20){
		for(int i = 1;i<=num;i++){
			ans*=i;
		}
	}
	else{
		for(int i = 1;i<=20;i++){
			ans*=i;
		}
	}
	return ans;
}


int main(){

	struct sockaddr_in client,server;

	
	struct pollfd *pollfds;
	int maxfds = 0;
	int numfds = 0;

	int socketFd = socket(AF_INET,SOCK_STREAM,0);

	if(socketFd < 0){
		perror("Socket Creation");
		exit(1);
	}

	server.sin_family = AF_INET;
	server.sin_port = htons(8080);
	server.sin_addr.s_addr = htonl(INADDR_ANY);

	if(bind(socketFd,(struct sockaddr*)&server,sizeof(server))<0){
		perror("Binding error");
		exit(1);
	}

	if(listen(socketFd,4000) < 0){
		perror("Listerning to connections");
		exit(1);
	}

	socklen_t clientSize = sizeof(client);
	
	
	maxfds = 5;

	int efd;
	int nfds = 0;

	if ((efd = epoll_create1 (0)) == -1){
		perror("Epoll create");
	}
	
    struct epoll_event ev, ep_event [10];

    ev.events = EPOLLIN;
    ev.data.fd = socketFd;
    if (epoll_ctl (efd, EPOLL_CTL_ADD, socketFd, &ev) == -1){
    	perror("Epoll ctl");
    }
	

    

	
	socklen_t addrlen;

	char recv_message[1024];

	while(true){

		if ((nfds = epoll_wait (efd, ep_event, 10,  -1)) == -1){
			perror("Epoll wait");
		}

		for(int i = 0; i < (nfds); i++){

			if((ep_event [i].events & EPOLLIN) == EPOLLIN){
				if(ep_event [i].data.fd == socketFd) {
					int fd_new;
                    if ((fd_new =  accept(socketFd,(struct sockaddr *) &client, &clientSize)) == -1){

                        perror ("accept");
                    }

                    ev.events = EPOLLIN;
                    ev.data.fd = fd_new;
                    if (epoll_ctl (efd, EPOLL_CTL_ADD, fd_new, &ev) == -1){
	                	perror ("epoll_ctl");
                    }
				}


				else{
					memset (&recv_message, '\0', 1024);
	                ssize_t numbytes = recv (ep_event [i].data.fd, &recv_message, 1024, 0);

	                if (numbytes == -1)
	                    perror ("recv");
	                else if (numbytes == 0) {
	                    // connection closed by client
	                   
	                    if (epoll_ctl (efd, EPOLL_CTL_DEL, ep_event [i].data.fd, &ev) == -1){
	                    	perror ("epoll_ctl");
	                    }

                        if (close (ep_event [i].data.fd) == -1){
                            perror ("close");
                        }
	                }

	                else{
	                	ll num = atoi(recv_message);

	                    ll fact = factorial(num);

	                    char ack[1024];
					
						sprintf(ack,"%lld",fact);
						printf("%lld\n",fact);
						if(send(ep_event [i].data.fd, &ack, sizeof(ack),0) == -1){
							perror("Sending bytes");
							exit(1);
						}
	                }
				}
			}


			
		}

	}
	close(socketFd);
	exit(0);

}