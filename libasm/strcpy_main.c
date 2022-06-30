/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   strcpy_main.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/09 10:15:21 by alienard          #+#    #+#             */
/*   Updated: 2020/03/10 11:19:46 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibasm.h"

void	ft_strcpy_main(void)
{
	const char src0[] = "978654321";
	const char src1[] = "978654321978654321";
	const char src2[] = "";
	const char src3[] = "c";
	const char src4[] = "sfhbfdf\0vdjbsd";
	char dst[999];
	char dst1[999];
	char *ret;
	char *ret1;
	size_t i;

	i = 0;
	ret = strcpy(dst, src0);
	ret1 = ft_strcpy(dst1, src0);
	while (i != strlen(dst))
	{
		if (dst[i] != dst1[i])
		{
			red();
			printf("ft_strcpy test 0 not ok\n");
			reset();
			return ;
		}
		i++;
	}

	i = 0;
	ret = strcpy(dst, src1);
	ret1 = ft_strcpy(dst1, src1);
	while (i != strlen(dst))
	{
		if (dst[i] != dst1[i])
		{
			red();
			printf("ft_strcpy test 1 not ok\n");
			reset();
			return ;
		}
		i++;
	}

	i = 0;
	ret = strcpy(dst, src2);
	ret1 = ft_strcpy(dst1, src2);
	while (i != strlen(dst))
	{
		if (dst[i] != dst1[i])
		{
			red();
			printf("ft_strcpy test 2 not ok\n");
			reset();
			return ;
		}
		i++;
	}

	i = 0;
	ret = strcpy(dst, src3);
	ret1 = ft_strcpy(dst1, src3);
	while (i != strlen(dst))
	{
		if (dst[i] != dst1[i])
		{
			red();
			printf("ft_strcpy test 3 not ok\n");
			reset();
			return ;
		}
		i++;
	}

	i = 0;
	ret = strcpy(dst, src4);
	ret1 = ft_strcpy(dst1, src4);
	while (i != strlen(dst))
	{
		if (dst[i] != dst1[i])
		{
			red();
			printf("ft_strcpy test 4 not ok\n");
			reset();
			return ;
		}
		i++;
	}
	green();
	printf("ft_strcpy ok\n");
	reset();
}
