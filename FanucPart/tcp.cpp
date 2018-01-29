/* A simple server in the internet domain using TCP
   The port number is passed as an argument 
   This version runs forever, forking off a separate 
   process for each connection
*/
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include "rapidjson/document.h"
#include "rapidjson/writer.h"
#include "rapidjson/stringbuffer.h"
#include <iostream>
#include "findShape.h"
#include <string>
using namespace rapidjson;
using namespace std;

void dostuff(int); /* function prototype */
void error(const char *msg)
{
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
     int sockfd, newsockfd, portno, pid;
     socklen_t clilen;
     struct sockaddr_in serv_addr, cli_addr;

     if (argc < 2) {
         fprintf(stderr,"ERROR, no port provided\n");
         exit(1);
     }
     sockfd = socket(AF_INET, SOCK_STREAM, 0);
     if (sockfd < 0) 
        error("ERROR opening socket");
     bzero((char *) &serv_addr, sizeof(serv_addr));
     portno = atoi(argv[1]);
     serv_addr.sin_family = AF_INET;
     serv_addr.sin_addr.s_addr = INADDR_ANY;
     serv_addr.sin_port = htons(portno);
     if (bind(sockfd, (struct sockaddr *) &serv_addr,
              sizeof(serv_addr)) < 0) 
              error("ERROR on binding");
     listen(sockfd,5);
     clilen = sizeof(cli_addr);
     while (1) {
         newsockfd = accept(sockfd, 
               (struct sockaddr *) &cli_addr, &clilen);
         if (newsockfd < 0) 
             error("ERROR on accept");
         pid = fork();
         if (pid < 0)
             error("ERROR on fork");
         if (pid == 0)  {
             close(sockfd);
             dostuff(newsockfd);
             exit(0);
         }
         else close(newsockfd);
     } /* end of while */
     close(sockfd);
     return 0; /* we never get here */
}

/******** DOSTUFF() *********************
 There is a separate instance of this function 
 for each connection.  It handles all communication
 once a connnection has been established.
 *****************************************/
void dostuff (int sock)
{
   int n;
   char buffer[256];
      
   bzero(buffer,256);
   n = read(sock,buffer,255);
   if (n < 0) error("ERROR reading from socket");
   //printf("Here is the message: %s\n",buffer);
   //n = write(sock,"I got your message",18);
   //if (n < 0) error("ERROR writing to socket");

    Document d;
    d.Parse(buffer);
    // 2. Modify it by DOM.
	Value& s = d["Shape"];	
	Value& c = d["Color"];	
	double x, y;		
	GeoShape ss = static_cast<GeoShape>(s.GetInt());
	Color cc = static_cast<Color>(c.GetInt());
	Shape shape(ss,cc);
	searchInField(shape, x, y);	
	cout << x << endl;
	string coord = std::to_string(x) + ", " + std::to_string(y);
	int l = coord.length();      
    // declaring character array
	char char_array[l+1]; 
	// copying the contents of the 
    // string to char array
    strcpy(char_array, coord.c_str()); 
	
	n = write(sock, char_array, 18);
    if (n < 0) error("ERROR writing to socket");

//std::cout << ss << std::endl;
	//shape.printShape();
	cout << "end coordinates: " << x << ", " << y << endl;
}

