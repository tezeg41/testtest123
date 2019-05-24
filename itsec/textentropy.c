#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>


int *countLetters();

int main(int argc, char** argv){



	if(!argc == 2)
		return 0;

	FILE *text = fopen(argv[1], "r");
		if(NULL == text)
			printf("Datei konnte nicht geoeffnet werden");	 
	
	int letters[52];
	int lett = 0;
	char buffer[128];
	while(!feof(text)){

		fgets(buffer,1024, text);
		printf(" %s \n", buffer);
		char *word = strtok(buffer, " ,.-");
	//	lett = isalpha();
	//	printf("Buchstabe: %i\n", lett);
		while(NULL != word){
       

	//		printf("%s",word);
			word = strtok(NULL, " ,.-");
			if(word){				
				lett = isalpha(*word);
				printf("Buchstabe: %i \n", lett);
			}
		}
	}

	return 0;

}
