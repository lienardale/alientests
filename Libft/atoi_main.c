/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   atoi_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/09 13:23:51 by alienard          #+#    #+#             */
/*   Updated: 2019/10/28 16:29:32 by pcariou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibft.h"

void ft_atoi_main(void)
{
//	char i[] = "9223372036854775808";
	const char i[] = "-2147483648";
	if(atoi("")==ft_atoi("") && atoi("    ")==ft_atoi("    ")
	&& atoi(i)==ft_atoi(i) && atoi(" +123")==ft_atoi(" +123") 
	&& atoi(" +-123")==ft_atoi(" +-123") && atoi(" --123")==ft_atoi(" --123") 
	&& atoi("   -1 23")==ft_atoi("   -1 23"))
	{
		green();
		printf("ft_atoi ok\n");
		reset();
	}
	else
	{
		red();
		printf("ft_atoi not ok\n");
		reset();
	}
}
