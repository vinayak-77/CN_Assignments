//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


#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <stdbool.h>
#include <pthread.h>
#include <signal.h>

#define ll long long
#define PORT 8081

ll total = 0;

int socketFd;

void signalHandler(int sigNum){
	signal(SIGINT,signalHandler);
	close(socketFd);
	exit(0);
}


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

void* handle(void* clientAccRes){
	
	char readString[1024];
	int clientAcc = *((int*)clientAccRes);
	free(clientAccRes);
	
	
	while(true){
		ll readBytes = read(clientAcc,&readString,1024);

		if(readBytes==0){
			break;
		}

		if(readBytes<0){
			perror("read");
			exit(1);
		}
		ll num = atoi(readString);
		
		ll ans = factorial(num);

		char ack[1024];
				
		sprintf(ack,"%lld",ans);
		printf("%s\n",ack);

		ll writeBytes = write(clientAcc,&ack,sizeof(ack));

		if(writeBytes<0){
			perror("write");
			exit(1);
		}

		
	}
	
	return NULL;
}

int main(){

	ll total;


	signal(SIGINT,signalHandler);

	struct sockaddr_in server,client;
	int clientAccRes;
	

	 // Creating the socket
	socketFd = socket(AF_INET,SOCK_STREAM,0);

	if(socketFd<0){
		
		perror("Socket Creation");
		exit(1);
	}

	bzero(&server,sizeof(server));
	server.sin_family = AF_INET;
	server.sin_port = htons(8080);
	server.sin_addr.s_addr = htonl(INADDR_ANY);

	if(bind(socketFd,(struct sockaddr*)&server,sizeof(server))<0){
		perror("Error in binding the socket");
		exit(1);
	}

	if(listen(socketFd,3000)){
		perror("Listen");
		exit(1);
	}
	
	
	int clientSize = sizeof(client);

	while(true){
		
		int newFd = accept(socketFd,(struct sockaddr*)&client,&clientSize);
		if(newFd<0){
			perror("accept");
			close(socketFd);
			exit(1);
		}
		pthread_t thr;
		int *clientFd = malloc(sizeof(int));
		*clientFd = newFd;
		
		
		int th = pthread_create(&thr,NULL,handle,clientFd);
		if(th != 0){
			
			perror("Thread");
			continue;
		}
		pthread_join(thr,NULL);
		
		
	}
	
		
	
	close(socketFd);
	
}