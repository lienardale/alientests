/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/21 19:10:51 by alienard          #+#    #+#             */
/*   Updated: 2020/03/10 12:26:33 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibasm.h"

int main(void)
{
	green();
	printf("\nPartie obligatoire\n\n");
	reset();
	ft_strlen_main();
	ft_strcpy_main();
	ft_strcmp_main();
	ft_write_main();
	ft_read_main();
	ft_strdup_main();
	printf("\n");
	return (0);
}
