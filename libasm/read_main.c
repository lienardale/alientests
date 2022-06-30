/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   read_main.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/09 17:48:30 by alienard          #+#    #+#             */
/*   Updated: 2020/03/09 19:27:00 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibasm.h"

void	ft_read_main(void)
{
	char	buffer_0[7];
	char	buffer_1[7];
	int		fd;
	ssize_t		ret;
	fd = open("test", O_RDONLY);
	ret = read(fd, buffer_0, 6);

	if (ret != ft_read(fd, buffer_1, 6))
	{
		red();
		printf("ft_read not ok\n");
		reset();
		return ;
	}
	fd = open("test.txt", O_RDONLY);
	ret = read(fd, buffer_0, 6);
	close(fd);
	fd = open("test.txt", O_RDONLY);
	if (ret != ft_read(fd, buffer_1, 6))
	{
		red();
		printf("ft_read not ok\n");
		reset();
		return ;
	}
	close(fd);
	green();
	printf("ft_read ok\n");
	reset();
}