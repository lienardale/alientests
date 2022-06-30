#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char		**ft_split_charset(const char *s, const char *set);

void	ft_print_ret(char **str)
{
	int pos;

	pos = -1;
	while(str[++pos])
		printf("str[%d] : |%s|\n", pos, str[pos]);
}

void	ft_free_ret(char **str)
{
	int pos;

	pos = -1;
	while(str[++pos])
		free(str[pos]);
	free(str);
}

int main()
{
	int	buf = 1024, pos = 0;
	char **tok = malloc(buf * sizeof(char*));
	char *ret = NULL;
	char **tmp;
$$$1

	return (0);
}