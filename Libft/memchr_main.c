/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   memchr_main.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/09 15:20:34 by alienard          #+#    #+#             */
/*   Updated: 2019/11/21 13:50:17 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibft.h"

void ft_memchr_main(void)
{
	const void *s = "cc2555 555555555 555555555523a";

	if (memchr(s, 5, 20) == ft_memchr(s, 5, 20) 
		&& memchr(s, 5, 0) == ft_memchr(s, 5, 0)
		&& memchr(s, 8, 20) == ft_memchr(s, 8, 20)
		&& memchr(s, '\0', 20) == ft_memchr(s, '\0', 20)
		&& memchr(s, '\0', 40) == ft_memchr(s,'\0', 40))
	{
		green();
		printf("ft_memchr ok\n");
		reset();
	}
	else
	{
	/*	printf("|%s| |%p|\n", memchr(s, '\0', 20), memchr(s, '\0', 20));
		printf("%s %p\n", ft_memchr(s, '\0', 20), ft_memchr(s, '\0', 20));
		printf("|%s| |%p|\n", memchr(s, '5', 0), memchr(s, '5', 0));
		printf("%s %p\n", ft_memchr(s, '5', 0), ft_memchr(s, '5', 0));
		printf("%s %p\n", memchr(s, '\0', 40), memchr(s, '\0', 40));
		printf("%s %p\n", ft_memchr(s, '\0', 40), ft_memchr(s, '\0', 40));
		printf("%s %p\n", memchr(s, 5, 20), memchr(s, 5, 20));
		printf("%s %p\n", ft_memchr(s, 5, 20), ft_memchr(s, 5, 20));
		printf("%s %p\n", memchr(s, 8, 20), memchr(s, 8, 20));
		printf("%s %p\n", ft_memchr(s, 8, 20), ft_memchr(s, 8, 20));
		*/
		red();
		printf("ft_memchr not ok\n");
		reset();
	}

	
//	printf("%s %p\n", ft_memchr(NULL, '\0', 20), ft_memchr(NULL, '\0', 20));
}
