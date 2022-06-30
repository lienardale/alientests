/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   strcpy_main_3.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/09 10:15:21 by alienard          #+#    #+#             */
/*   Updated: 2020/03/10 11:31:04 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../mainlibasm.h"

static void	ft_catch_segfault(int i)
{
	(void)i;
	green();
	printf("segfault 3 ft_strcpy ok\n");
	reset();
	_exit(0);
}

int			main(void)
{
	char *tmp;
	
	signal(SIGSEGV, &ft_catch_segfault);
	tmp = ft_strcpy(NULL, NULL);
	red();
	printf("segfault 3 ft_strcpy not ok\n");
	reset();
}
