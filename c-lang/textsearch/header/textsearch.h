/*
 * textsearch.h
 *
 *  Created on: 2008-9-15
 *      Author:		Volnet
 *      Website:	http://volnet.cnblogs.com
 *				    http://www.cppblog.com/mymsdn
 */

#ifndef TEXTSEARCH_H_
#define TEXTSEARCH_H_

#include <stdarg.h>

#ifndef INDEX_T_DEFINDED
typedef int index_t;
#define INDEX_T_DEFINDED
#endif

#ifndef COUNT_T_DEFINDED
typedef unsigned int count_t;
#define COUNT_T_DEFINDED
#endif

/*
 * @return
 * 	offset: the number of chars that
 * 			from you found to the end of the word
 * 			after you execute the search_foreach function.
 * 		e.g.
 * 			if you replace("abcdefgh", "de", "123");//abc45fgh;
 * 			you had set offset as 3,
 * 			which will let the pointer at the next char 'f';
 * */
typedef void (*search_foreach)(const char *text,
		const char *found, index_t lengthOfFound,
		index_t *offset,
		va_list *paras);
typedef void (*search_global)(va_list *paras, void *ret);
#define UNFINDED (index_t)-1
#define MAX_INDICES 1000;

/*declartion of functions*/

/*function :To find the first char(c) in text
 * @paras
 * text	:a pointer to the first char of the text to search
 * c	:the char to find.
 * out_indices :(return) an array takes the indices of the tofind in the text.
 * 				(value) if(out_indices == NULL), it without any exceptions.
 * tofind :the word to find in the text.
 * @return	:the index of the char in the text.It will be 'UNFINDED' as no find.
 * */
index_t indexof(const char *text, char c);
count_t search_c(const char *text, const char c, index_t *out_indices);
count_t search_s(const char *text, const char *tofind, index_t *out_indices);
count_t search_s_foreach(
		/*the full text to search.*/
		const char *text,
		/*the word to find in the text.*/
		const char *tofind,
		/*(return) an array takes the indices of the tofind in the text.
		 * (value) if(out_indices == NULL), it without any exceptions.
		 * */
		index_t *out_indices,
		/*a function to gfunc(...) for the text.
		 * it will execute at the front of all.
		 * */
		search_global gfunc,
		/*the number of gfunc's parameters. */
		const size_t gfunc_paras_count,
		/*a function to func(...) for each of
		 * the word search_s from text.
		 * */
		search_foreach func,
		/*if gfunc!=NULL, the first parameter is the {char *ret; }
		 * ret is the parameter for return.
		 * */
		...
		);
/*
 * function :replace the word 's1' to 's2' in text.
 * @return :
 * 	ret: an array who has enough space to load the result.
 * 			text != ret
 * */
void replace(const char *text, const char *s1, const char *s2, char ret[]);
/* function :remove the word 's' in text.
 * @return :
 * 	ret: an array who has enough space to load the result.
 * 			text != ret
 * */
void to_remove(char *text, const char *s, char ret[]);

#endif /* TEXTSEARCH_H_ */
