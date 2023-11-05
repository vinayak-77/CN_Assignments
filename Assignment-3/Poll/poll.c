#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <poll.h>
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

	nfds_t nfds = 0;
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
	
	if((pollfds = malloc (5 * sizeof(struct pollfd))) == NULL){
		perror("MALLOC");
		exit(1);

	}

	maxfds = 5;


	pollfds->fd = socketFd;
	pollfds->events = POLLIN;
	pollfds->revents = 0;
	numfds = 1;

	socklen_t addrlen;

	char recv_message[1024];

	while(true){

		nfds = numfds;

		if(poll(pollfds, nfds, -1) == -1){
			perror("Select");
			exit(1);
		}


		for(int fd = 0; fd < (nfds+1); fd++){


			if((pollfds + fd)->fd <= 0){
				continue;
			}

			if (((pollfds + fd) -> revents & POLLIN) == POLLIN) {
				if ((pollfds + fd) -> fd == socketFd) {  // request for new connection
                    
                    int fd_new;
                    if ((fd_new =  accept(socketFd,(struct sockaddr *) &client, &clientSize)) == -1)
                        perror ("accept");
                    // add fd_new to pollfds
				    if (numfds == maxfds) { // create space
	                    if ((pollfds = realloc (pollfds, (maxfds + 5) * sizeof (struct pollfd))) == NULL)
	                    perror ("malloc");
	                    maxfds += 5;
				}
                numfds++;
	    		(pollfds + numfds - 1) -> fd = fd_new;
                (pollfds + numfds - 1) -> events = POLLIN;
                (pollfds + numfds - 1) -> revents = 0;
			}


			else{
				memset (&recv_message, '\0', 1024);
                ssize_t numbytes = recv ((pollfds + fd) -> fd, &recv_message, 1024, 0);

                if (numbytes == -1)
                    perror ("recv");
                else if (numbytes == 0) {
                    // connection closed by client
                    // fprintf (stderr, "Socket %d closed by client\n", (pollfds + fd) -> fd);
                    if (close ((pollfds + fd) -> fd) == -1)
                       perror ("close");
					(pollfds + fd) -> fd *= -1; // make it negative so that it is ignored in future
                }

                else{
                	 ll num = atoi(recv_message);

                    ll fact = factorial(num);

                    char ack[1024];
				
					sprintf(ack,"%lld",fact);
					printf("%lld\n",fact);
					if(send((pollfds + fd)->fd, &ack, sizeof(ack),0) == -1){
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