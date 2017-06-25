/*
 * test.c
 *
 *  Created on: 2008-9-15
 *      Author:		Volnet
 *      Website:	http://volnet.cnblogs.com
 *				    http://www.cppblog.com/mymsdn
 */

#include <stdio.h>
#include <stdlib.h>
#include "../header/textsearch.h"

int main(void){
	char *s = "this is a word, who contains \"wh\"!";
	char c = 'w';

	index_t indices_1[100];
	index_t *indices1 = indices_1;
	count_t count1;

	char *tofind = "wh";
	char *toremove = "onson";
	char *fromreplace = "wh";
	char *toreplace = "jonson";
	index_t indices_2[100];
	index_t *indices2;
	count_t count2;
	char ts[1000];
	char rs[1000];

	/*e.g:*/
	/*index_t indexof(char *text, char c);*/
	printf("the first index of %c is %d.\n",c,indexof(s,c));

	/*count_t search(char *text, char c, index_t *out_indices)*/
	count1 = search_c(s,c,indices1);
	printf("the '%c' in the text is in : ",c);
	while(count1--){
		printf("%d ",*indices1++);
	}
	printf(".\n");

	/*count_t search_s(char *text, const char *tofind, index_t *out_indices)*/
	indices2 = indices_2;
	count2 = search_s(s,tofind,indices2);
	printf("the \"%s\" in the text is in : ",tofind);
	while(count2--){
		printf("%d ",*indices2++);
	}
	printf(".\n");

	printf("the word is:\n\t%s\n",s);
	replace(s, fromreplace, toreplace,ts);
	printf("the word has be changed as (\"%s\"->\"%s\") :\n\t%s\n",fromreplace, toreplace, ts);

	to_remove(ts,toremove,rs);
	printf("the word remove (remove \"%s\") as : \n\t%s\n",toremove,rs);

	return EXIT_SUCCESS;
}
