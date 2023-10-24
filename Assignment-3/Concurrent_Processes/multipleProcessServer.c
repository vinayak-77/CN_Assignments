// Client IP - 10.0.2.15
// Server IP - 10.0.2.7

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <stdbool.h>

#define ll long long
#define PORT 8081


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
	

	while(true){
		
		
		clientSize = sizeof(client);
	
		clientAccRes = accept(socketRes,(struct sockaddr*)&client,&clientSize);
		
		if(clientAccRes<0){
			perror("Error in accepting client");
			exit(1);
			break;
		}
		
		if(fork()==0){
			close(socketRes);

			char readString[1024];
			
			while(true){
				
				// read(clientAccRes,&readString,1024);
				strcpy(readString,"");
				ll num;
				ll recvLen = read(clientAccRes,&readString,1024);

				num = atoi(readString);

				printf("Client message %lld\n",num);

				ll ans = factorial(num);

				
				char ack[1024];
				
				sprintf(ack,"%lld",ans);
				ll sendLen = write(clientAccRes,&ack,sizeof(ack));
				printf("Factorial is %lld\n",ans);
				
			}
			exit(EXIT_SUCCESS);
		}
	}
	printf("HELLOOOOO\n");
	close(clientAccRes);
}