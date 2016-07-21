/*
 * textsearch.c
 *
 *  Created on: 2008-9-15
 *      Author:		Volnet
 *      Website:	http://volnet.cnblogs.com
 *				    http://www.cppblog.com/mymsdn
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include "../header/textsearch.h"

/*
 * @return:
 * 	the first index of which difference char of another string.
 * */
static index_t compareTo_n(const char *s1, const char *s2, const count_t n);
static count_t length(const char *s);
static void replace_call(const char *text, const char *found, index_t lengthOfFound,
		index_t *offset, va_list *paras);
static void strcpy_gcall(va_list *paras, void *ret);

index_t indexof(const char *text, char c) {
	index_t index;
	index = 0;

	if (!sizeof text || !c)
		return UNFINDED;

	while (*text) {
		if (*text == c)
			return index;
		index++;
		text++;
	}
	return UNFINDED;
}

count_t search_c(const char *text, const char c, index_t *out_indices) {
	count_t count;
	index_t curr;
	count = 0;
	curr = 0;
	while (*text) {
		if (*text == c) {
			count++;
			*out_indices++ = curr;
		}
		curr++;
		text++;
	}
	return count;
}

count_t search_s(const char *text, const char *tofind, index_t *out_indices) {
	return search_s_foreach(text, tofind, out_indices, NULL, 0, NULL);
}

count_t search_s_foreach(const char *text, const char *tofind, index_t *out_indices,
		search_global gfunc, const size_t gfunc_paras_count,
		search_foreach func, ...) {
	count_t count;
	index_t curr;
	count_t lengthOfToFind;
	count_t offset;
	size_t argCount;
	va_list ap;
	void *ret;
	count_t lengthOfText;
	char *ttext;

	count = 0;
	curr = 0;
	ttext = (char *)text;
	lengthOfToFind = length(tofind);

	if (gfunc != NULL) {
		va_start(ap, func);
		ret = va_arg(ap, void *);
		gfunc(&ap, ret);
		va_end(ap);
		ttext = ret;
	}

	lengthOfText = length(ttext);
	while (*ttext) {
		if (*ttext == *tofind) {
			if (lengthOfToFind == (offset = compareTo_n(ttext, tofind,
					lengthOfToFind))) {
				/*if found*/
				if (out_indices != NULL)
					*out_indices++ = curr;
				count++;
				if (func != NULL) {
					va_start(ap, func);
					argCount = gfunc_paras_count;
					while (argCount--)
						va_arg(ap, void *);
					func(ttext, tofind, lengthOfToFind, &offset, &ap);
					va_end(ap);
				}
			}
			curr += offset;
			ttext += offset;
		} else {
			curr++;
			ttext++;
		}
	}

	return count;
}

void replace(const char *text, const char *s1, const char *s2, char ret[]) {
	if (text == ret) {
		perror("warning: the pointer can't equals to the pointer to ret.\n");
		return;
	}
	search_s_foreach(text, s1, NULL, strcpy_gcall, 2, replace_call, ret, text,
		s2);
}

static void replace_call(const char *text, const char *found, index_t lengthOfFound,
		index_t *offset, va_list *paras) {
	char *s2 = va_arg(*paras, char *);
	index_t off;
	index_t lenS2;
	count_t leaveLenText;
	int inc;
	char *ttext;

	lenS2 = length(s2);
	*offset = lenS2;
	inc = 0;
	ttext = (char *)text;

	leaveLenText = length(text);

	/*move data*/
	off = lengthOfFound - lenS2;
	if (off > 0) {
		/*move to front*/
		while (leaveLenText--) {
			*(ttext + lenS2 + inc) = *(ttext + lengthOfFound + inc);
			inc++;
		}
	} else if (off < 0) {
		/*move to behind*/
		while (leaveLenText) {
			*(ttext + leaveLenText - off) = *(ttext + leaveLenText);
			leaveLenText--;
		}
	}

	/*do copy*/
	while (*s2) {
		*ttext++ = *s2++;
	}
}

void to_remove(char *text, const char *s, char ret[]) {
	replace(text, s, "", ret);
}

static void strcpy_gcall(va_list *paras, void *ret) {
	char *target = (char *) ret;
	char *text = va_arg(*paras, char *);

	while ((*target++ = *text++))
		;
}

static index_t compareTo_n(const char *s1, const char *s2, const count_t n) {
	count_t tn;
	tn = n;
	while (tn--)
		if (*s1 || *s2)
			if (*s1++ != *s2++) {
				return n - tn - 1;
			}
	return n - tn - 1;
}

static count_t length(const char *s) {
	count_t len;
	len = 0;
	while (*s++)
		len++;
	return len;
}
