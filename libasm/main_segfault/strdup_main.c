/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   strdup_main.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/23 10:51:17 by alienard          #+#    #+#             */
/*   Updated: 2020/03/10 11:24:58 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../mainlibasm.h"

static void	ft_catch_segfault(int i)
{
	(void)i;
	green();
	printf("segfault ft_strdup ok\n");
	reset();
	_exit(0);
}

int			main(void)
{
	char *tmp;
	
	signal(SIGSEGV, &ft_catch_segfault);
	tmp = ft_strdup(NULL);
	red();
	printf("segfault ft_strdup not ok\n");
	reset();
}
