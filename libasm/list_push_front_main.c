/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   list_push_front_main.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/10 12:29:41 by alienard          #+#    #+#             */
/*   Updated: 2020/03/10 17:04:02 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibasm.h"

void	ft_list_push_front_main(void)
{
	t_list		*begin;
	char		*str[4];
	size_t i = 0;
	
	str[0] = "lorem";
	str[1] = "ipsum";
	str[2] = "dolor";
	str[3] = "sit";
	begin = NULL;
	ft_list_push_front(&begin, str[3]);
	ft_list_push_front(&begin, str[2]);
	ft_list_push_front(&begin, str[1]);
	ft_list_push_front(&begin, str[0]);
	while (begin)
	{
		if (strcmp(begin->data, str[i]) != 0)
		{
			red();
			printf("ft_list_push_front not ok\n");
			reset();
		}
		// ft_print_result(begin);
		begin = begin->next;
		i++;
	}
	if (i == 4)
	{
		green();
		printf("ft_list_push_front ok\n");
		reset();
		return ;
	}
	red();
	printf("ft_list_push_front not ok\n");
	reset();
}