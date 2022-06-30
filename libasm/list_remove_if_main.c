/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   list_remove_if_main.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/10 12:29:46 by alienard          #+#    #+#             */
/*   Updated: 2020/03/10 19:07:04 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibasm.h"

void	ft_list_remove_if_main(void)
{
	t_list		*begin;
	char		*str[4];
	char		*tab;
	size_t i = 0;
	
	str[0] = "lorem";
	str[1] = "ipsum";
	str[2] = "dolor";
	str[3] = "sit";
	begin = NULL;

	tab = ft_strdup(str[2]);
	ft_list_push_front(&begin, str[3]);
	ft_list_push_front(&begin, tab);
	ft_list_push_front(&begin, str[1]);
	ft_list_push_front(&begin, str[0]);
	ft_list_remove_if(&begin, tab, &ft_strcmp, &ft_free_data);
	while (begin)
	{
		if (strcmp(begin->data, str[i]) != 0 && i != 2)
		{
			red();
			printf("ft_list_remove_if not ok\n");
			reset();
		}
		// ft_print_result(begin);
		if (i != 2)
			begin = begin->next;
		i++;
	}
	if (i == 4)
	{
		green();
		printf("ft_list_remove_if ok\n");
		reset();
		return ;
	}
	red();
	printf("ft_list_push_front not ok\n");
	reset();
}