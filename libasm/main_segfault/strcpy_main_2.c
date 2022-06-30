/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   strcpy_main_2.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/09 10:15:21 by alienard          #+#    #+#             */
/*   Updated: 2020/03/10 11:30:47 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../mainlibasm.h"

static void	ft_catch_segfault(int i)
{
	(void)i;
	green();
	printf("segfault 2 ft_strcpy ok\n");
	reset();
	_exit(0);
}

int			main(void)
{
	char *tmp;
	
	signal(SIGSEGV, &ft_catch_segfault);
	tmp = ft_strcpy("test", NULL);
	red();
	printf("segfault 2 ft_strcpy not ok\n");
	reset();
}
