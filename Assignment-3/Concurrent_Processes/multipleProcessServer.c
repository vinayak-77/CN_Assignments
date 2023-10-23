// Client IP - 10.0.2.15
// Server IP - 10.0.2.7

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>

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
	struct sockaddr_in sockAddr;

	 // Creating the socket
	int socketRes = socket(AF_INET,SOCK_STREAM,0);

	if(socketRes==-1){
		perror("Error in creating the socket");
		exit(1);
	}

	sockAddr.sin_family = AF_INET;
	sockAddr.sin_port = PORT;
	sockAddr.sin_addr.s_addr = htonl(INADDR_ANY);

	int bindRes = bind(socketRes,(struct socadd*)&sockAddr,sizeof(sockAddr));

	if(bindRes==-1){
		perror("Error in binding the socket");
		exit(1);
	}
}