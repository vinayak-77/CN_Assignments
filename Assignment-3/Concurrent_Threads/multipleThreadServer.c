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

#define ll long long
#define PORT 8081

pthread_t threads[50];

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
	printf("In handle...\n");
	strcpy(readString,"");
	ll num;
	int clientAccRes = *((int*)clientAccRes);
	ll recvLen = recv(clientAccRes,&readString,1024,0);

	num = atoi(readString);

	printf("Client message %lld\n",num);

	ll ans = factorial(num);

	
	char ack[1024];
	
	sprintf(ack,"%lld",ans);
	ll sendLen = send(clientAccRes,&ack,sizeof(ack),0);
	
	printf("Factorial is %lld\n",ans);
	return NULL;
}

int main(){
	struct sockaddr_in server,client;
	int clientAccRes;
	int clientSize;

	 // Creating the socket
	int socketRes = socket(AF_INET,SOCK_STREAM,0);

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
	

	for(int i = 0;i<50;i++){
		
		
		clientSize = sizeof(client);
	
		clientAccRes = accept(socketRes,(struct sockaddr*)&client,&clientSize);
		
		if(clientAccRes<0){
			perror("Error in accepting client");
			exit(1);
			break;
		}
		
		printf("Creating thread....\n");
		pthread_create(&threads[i],NULL,handle,&clientAccRes);
	}

	for(int i = 0;i<50;i++){
		pthread_join(threads[i],NULL);
	}
	printf("HELLOOOOO\n");
	close(clientAccRes);
}