/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   strlen_main.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/21 20:29:28 by alienard          #+#    #+#             */
/*   Updated: 2020/03/10 10:30:15 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../mainlibasm.h"

static void	ft_catch_segfault(int i)
{
	(void)i;
	green();
	printf("segfault ft_strlen ok\n");
	reset();
	_exit(0);
}

int			main(void)
{
	signal(SIGSEGV, &ft_catch_segfault);
	ft_strlen(NULL);
	red();
	printf("segfault ft_strlen not ok\n");
	reset();
}
