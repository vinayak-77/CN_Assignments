#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <errno.h>
#include <syslog.h>
#include <unistd.h>
#include <stdbool.h>
#include <sys/select.h>
#include <ctype.h>
#include <stdint.h>
#include <time.h>

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
	fd_set fds,readfds;
	FD_ZERO(&fds);
	FD_SET(socketFd,&fds);

	int fdmax = socketFd;

	char recv_message[1024];

	while(true){

		readfds = fds;

		if(select(fdmax+1,&readfds, NULL, NULL, NULL) == -1){
			perror("Select");
			exit(1);
		}


		for(int fd = 0; fd < (fdmax+1); fd++){
			if(FD_ISSET(fd, &readfds)) {


				if(fd==socketFd){
					int fd_new;
					if((fd_new = accept(socketFd,(struct sockaddr *) &client, &clientSize)) == -1){
						perror("Accept");
						exit(1);
					}

					FD_SET(fd_new, &fds);
					printf("Accepted on %d\n",fd_new);
					if(fd_new > fdmax){
						fdmax = fd_new;
					}
				}


				
				else{
					memset(&recv_message, '\0', sizeof(recv_message));

					ssize_t recvBytes = recv(fd, &recv_message, sizeof(recv_message), 0);

					if(recvBytes == -1){
						perror("Receiving bytes");
						exit(1);
					}

					else if (recvBytes == 0) {
                        

                        FD_CLR (fd, &fds);
                        continue;
                    }

                    // printf("Received\n");

                    ll num = atoi(recv_message);

                    ll fact = factorial(num);

                    char ack[1024];
				
					sprintf(ack,"%lld",fact);

					if(send(fd, &ack, sizeof(ack),0) == -1){
						perror("Sending bytes");
						exit(1);
					}

				}
			}
		}

	}
	close(socketFd);
	exit(0);

}