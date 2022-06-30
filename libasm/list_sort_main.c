/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   list_sort_main.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/10 12:29:58 by alienard          #+#    #+#             */
/*   Updated: 2020/03/11 18:03:46 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibasm.h"

void	ft_swap(t_list *a, t_list *b)
{
	char *c;
	char *d;

	d = a->data;
	c = b->data;
	a->data = c;
	b->data= d;
}

void	ft_sort(t_list **beg, int (*cmp)())
{
	t_list	*tmp;
	t_list	*cur;
	int		ret;

	cur = *beg;
	while (cur)
	{
		tmp = cur->next;
		while (tmp)
		{
			if (tmp && cur && (ret = cmp(cur->data, tmp->data)) > 0)
				ft_swap(cur, tmp);
			tmp = tmp->next;
		}
		cur = cur->next;
	}
}

void	ft_list_sort_main(void)
{
	t_list		*begin;
	char		*str[4];
	size_t i = 0;
	
	str[0] = "lorem";
	str[1] = "ipsum";
	str[2] = "dolor";
	str[3] = "sit";
	begin = NULL;

	ft_list_push_front(&begin, str[0]);
	ft_list_push_front(&begin, str[3]);
	ft_list_push_front(&begin, str[1]);
	ft_list_push_front(&begin, str[3]);
	ft_list_push_front(&begin, str[2]);
	ft_list_push_front(&begin, str[3]);
	ft_list_sort(&begin, &strcmp);	
	// ft_sort(&begin, &ft_strcmp);
	while (begin)
	{
		// ft_print_result(begin);
		if (begin->next && ft_strcmp(begin->data, begin->next->data) > 0)
		{
			red();
			printf("ft_list_sort not ok\n");
			reset();
			return ;
		}
		begin = begin->next;
		i++;
	}
	green();
	printf("ft_list_sort ok\n");
	reset();
}