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

pthread_t threads[60];



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
	
	int i = 0;
	while(i<50){
		strcpy(readString,"");
		ll num;
		
		if(clientAcc>=53){
			printf("Handler----%d %d\n",clientAcc,i);
		}
		
		ll recvLen = read(clientAcc,&readString,1024);
		if(recvLen<0){
			printf("BREAKING HERE %d\n",clientAcc);
			close(clientAcc);
			// i++;
			// continue;
			return NULL;
		}

		num = atoi(readString);

		// printf("Client message %lld\n",num);

		ll ans = factorial(num);
		i++;
		
		char ack[1024];
		
		sprintf(ack,"%lld",ans);
		ll sendLen = write(clientAcc,&ack,sizeof(ack));
		if(sendLen <= -1){
			printf("BREAKING HERE %d\n",clientAcc);
			close(clientAcc);
			return NULL;
			// i++;
			// continue;
		}
		// if(sendLen==0){
		// 	close(clientAcc);
		// 	return NULL;
		// }
		
		// printf("Factorial is %lld\n",ans);	
		
	}
	printf("Completed-----%d\n",clientAcc);
	close(clientAcc);
	
	
	return NULL;
}

int main(){
	struct sockaddr_in server,client;
	int clientAccRes;
	// int clientSize;

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

	int listenRes = listen(socketRes,60);
	if(listenRes!=0){
		perror("Error while listening");
		exit(1);
	}
	
	
	int connectionCnt = 0;
	while(connectionCnt<50){
		
		
		int clientSize = sizeof(client);
	
		clientAccRes = accept(socketRes,(struct sockaddr*)&client,&clientSize);
		printf("%d\n",clientAccRes);
		if(clientAccRes<0){
			perror("Error in accepting client");
			exit(1);
			
		}
		
		
		pthread_create(&threads[connectionCnt],NULL,handle,&clientAccRes);

		connectionCnt++;
		
		// if(connectionCnt>=50){
		// 	connectionCnt = 0;
			
		// }
		
	}
		// close(socketRes);
		
		
	for(int i = 0;i<50;i++){
		pthread_join(threads[i],NULL);
	}

	
	
	
	close(socketRes);
}