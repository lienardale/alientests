#include "get_next_line.h"
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
int	main(int ac, char **av)
{
	char *line;
	int i = ac;
	char	ret[ac];
	int a = 0;
	char 	fd[ac];
	int k;

	if (ac >= 2)
	{
		while (--i > 0)
			fd[i] = open(av[i], O_RDONLY);
		i = ac;
		while (a != ac-1)
		{
			while (--i > 0)
			{
				ret[i] = get_next_line(fd[i], &line);
				printf("ret:%d line: |%s|\n", ret[i], line);
				free(line);
				if (ret[i] == -1) 
					return (-1) ;
			}
			i = ac;
			a = 0;
			k = ac;
			while (--k > 0)
				ret[k] == 0 ? a++ : 0;
		}
		i = ac;
		while (--i > 0)
		{
			if (close(fd[i]) < 0)
			{
				printf("close not ok\n");
				return (1);
			}
			printf("close ok\n");
		}
		system("leaks a.out");
	}
	else if (ac == 1)
	{
		while ((i = get_next_line(0, &line)) > 0)
		{
			printf("ret:%dline:|%s|\n", i, line);
			free(line);
		}
		printf("\nlast_ret:%dlast_line:|%s|\n", i, line);
		free(line);
		system("leaks a.out");
	}
	return (0);
}
