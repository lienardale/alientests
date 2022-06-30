/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/16 16:27:32 by alienard          #+#    #+#             */
/*   Updated: 2020/03/10 15:34:52 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibasm.h"

t_list	*ft_lstnew(void *content)
{

	t_list	*tmp;

	tmp = malloc(sizeof(t_list));
	if (tmp)
	{
		tmp->data = content;
		tmp->next = 0;
	}
	return (tmp);
}
