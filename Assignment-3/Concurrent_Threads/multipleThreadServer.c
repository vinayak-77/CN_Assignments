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

int socketRes;

// pthread_t threads[60];


void signalHandler(int sigNum){
	signal(SIGINT,signalHandler);
	close(socketRes);
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
	int readStatus;
	ll done = 0;
	while(done<50){
		ll readStatus = read(clientAcc,&readString,1024);
		if(readStatus<0){
			perror("read");
			break;
		}
		ll num = atoi(readString);
		// printf("Client message --- %lld\n",num);
		ll ans = factorial(num);

		char ack[1024];
				
		sprintf(ack,"%lld",ans);
		printf("%s\n",ack);
		ll writeStatus = write(clientAcc,&ack,sizeof(ack));
		if(writeStatus<0){
			perror("write");
			break;
		}

		done++;
	}
	printf("%lld\n",done);
	// if(readStatus==0){
	// 	printf("No more bytes received\n");
	

	
	return NULL;
}

int main(){

	ll total;


	signal(SIGINT,signalHandler);

	struct sockaddr_in server,client;
	int clientAccRes;
	// int clientSize;

	 // Creating the socket
	socketRes = socket(AF_INET,SOCK_STREAM,0);

	if(socketRes<0){
		
		perror("Error in creating the socket");
		exit(1);
	}
	bzero(&server,sizeof(server));
	server.sin_family = AF_INET;
	server.sin_port = htons(8080);
	server.sin_addr.s_addr = htonl(INADDR_ANY);

	int serverBindRes = bind(socketRes,(struct sockaddr*)&server,sizeof(server));

	if(serverBindRes<0){
		perror("Error in binding the socket");
		exit(1);
	}

	int listenRes = listen(socketRes,50);
	if(listenRes!=0){
		perror("Error while listening");
		exit(1);
	}
	
	
	int clientSize = sizeof(client);

	while(true){
		total++;
		
		clientAccRes = accept(socketRes,(struct sockaddr*)&client,&clientSize);
		if(clientAccRes<0){
			perror("accept");
			close(socketRes);
			exit(1);
		}
		pthread_t thr;
		int *clientArg = malloc(sizeof(int));
		*clientArg = clientAccRes;
		
		ll done = 0;
		int th = pthread_create(&thr,NULL,handle,clientArg);
		if(th != 0){
			
			perror("Thread");
			continue;
		}
		
		// printf("%lld\n",total);
		
		// connectionCnt++;
		
		// if(connectionCnt>=50){
		// 	connectionCnt = 0;
			
		// }
		
	}
		// close(socketRes);
		
		
	
	close(socketRes);
	if(clientAccRes<0){
		perror("Error in accepting");
		exit(1);
	}
	
	printf("STOPPPPPPPPPPPPPPPPPPPP----%lld\n",total);
	
	
}