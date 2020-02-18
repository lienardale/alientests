/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   strchr_main.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/08 15:51:38 by alienard          #+#    #+#             */
/*   Updated: 2019/10/21 20:49:23 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibft.h"

void	ft_strchr_main(void)
{
	const char *s1 = "qwertyuiopasdfghjklzxcvbnm12345678";
	const char *s2 = "q";
	const char *s3 = "";
	int c1 = 'g';
	int c2 = '9';
	int c3 = '\0';
	
	if (strchr(s1, c1) == ft_strchr(s1, c1) && strchr(s1, c2) == ft_strchr(s1, c2)
		&& strchr(s1, c3) == ft_strchr(s1, c3)
		&& strchr(s2, c1) == ft_strchr(s2, c1)
		&& strchr(s2, c2) == ft_strchr(s2, c2)
		&& strchr(s2, c3) == ft_strchr(s2, c3)
		&& strchr(s3, c1) == ft_strchr(s3, c1)
		&& strchr(s3, c2) == ft_strchr(s3, c2)
		&& strchr(s3, c3) == ft_strchr(s3, c3))
	{
		green();
		printf("ft_strchr ok\n");
		reset();
	}
	else
	{
		red();
		printf("ft_strchr not ok\n");
		reset();
	}
}
