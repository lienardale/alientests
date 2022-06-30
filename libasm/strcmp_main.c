/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   strcmp_main.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/08 18:43:30 by alienard          #+#    #+#             */
/*   Updated: 2020/03/10 09:22:37 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibasm.h"

void	ft_strcmp_main(void)
{
	const char *s1 = "qwertyuiopasdfghjklzxcvbnm12345678";
	const char *s2 = "qwertyuizxcvbnm12345678";
	const char *s3 = "";
	const char *s4 = "q";

	if(strcmp(s1, s1) == ft_strcmp(s1, s1)
	&& strcmp(s2, s2) == ft_strcmp(s2, s2)
	&& strcmp(s3, s3) == ft_strcmp(s3, s3)
	&& strcmp(s4, s4) == ft_strcmp(s4, s4)
	&& strcmp(s1, s2) == ft_strcmp(s1, s2)
	&& strcmp(s1, s3) == ft_strcmp(s1, s3)
	&& strcmp(s1, s4) == ft_strcmp(s1, s4))
	{
		green();
		printf("ft_strcmp ok\n");
		reset();
	}
	else
	{
		red();
		printf("ft_strcmp not ok\n");
		reset();
	}

}
