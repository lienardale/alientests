/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_bonus.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/08 19:03:37 by alienard          #+#    #+#             */
/*   Updated: 2020/03/12 12:44:04 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibasm.h"

void	ft_print_result(t_list *elem)
{
	int	len = 0;
	while (((char *)elem->data)[len])
		len++;
	ft_write(1, elem->data, len);
	ft_write(1, "\n",1);
}

void	ft_free_data(void *data)
{
	if (data != NULL)
		free(data);
	data = NULL;
}

int		main(void)
{
	green();
	printf("\nPartie bonus\n\n");
	reset();
	ft_list_size_main();
	ft_list_push_front_main();
	ft_list_remove_if_main();
	ft_list_sort_main();
	ft_atoi_base_main();
	printf("\n");
	return (0);
}
