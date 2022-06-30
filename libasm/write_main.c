/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   write_main.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/09 17:48:17 by alienard          #+#    #+#             */
/*   Updated: 2020/03/10 10:39:16 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibasm.h"

void	ft_write_main(void)
{
	int fd;
	int	fd2;
	size_t ret;

	fd = open("../test.txt", O_RDONLY);
	ret = write(fd, "test no right", 13);
	if (ret != ft_write(fd, "test no right", 13))
	{
		red();
		printf("ft_write not ok\n");
		reset();
		return ;
	}
	close(fd);
	fd = open("test.txt", O_WRONLY | O_CREAT | O_TRUNC, 0777);
	fd2 = open("test_2.txt", O_WRONLY | O_CREAT | O_TRUNC, 0777);
	ret = write(fd, "test with rights", 18);
	if (ret != ft_write(fd2, "test with rights", 18))
	{
		red();
		printf("ft_write not ok\n");
		reset();
		return ;
	}
	close(fd);
	close(fd2);
	
	green();
	printf("ft_write ok\n");
	reset();
}