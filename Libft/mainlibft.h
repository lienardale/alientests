/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   mainlibft.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/21 19:12:29 by alienard          #+#    #+#             */
/*   Updated: 2020/02/18 15:24:34 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MAINLIBFT_H
# define MAINLIBFT_H

# include "/tmp/libft/libft.h"
# include <stdio.h>
# include <string.h>
# include <stdlib.h>
# include <unistd.h>

void	red(void);
void	green(void);
void	reset(void);

void	ft_print_result(t_list *elem);

void	ft_memset_main(void);
void	ft_bzero_main(void);
void	ft_memcpy_main(void);
void	ft_memccpy_main(void);
void	ft_memmove_main(void);
void	ft_memchr_main(void);
void	ft_memcmp_main(void);
void	ft_strlen_main(void);
/*void	ft_isalpha_main(void);
void	ft_isdigit_main(void);
void	ft_isalnum_main(void);
void	ft_isascii_main(void);
void	ft_isprint_main(void);
void	ft_toupper_main(void);
void	ft_tolower_main(void);*/
void	ft_is_main(void);
void	ft_strchr_main(void);
void	ft_strrchr_main(void);
void	ft_strncmp_main(void);
void	ft_strlcpy_main(void);
void	ft_strlcat_main(void);
void	ft_strnstr_main(void);
void	ft_atoi_main(void);
void	ft_calloc_main(void);
void	ft_strdup_main(void);

void	ft_substr_main(void);
void	ft_strjoin_main(void);
void	ft_strtrim_main(void);
void	ft_split_main(void);
void	ft_itoa_main(void);
void	ft_strmapi_main(void);
/*void	ft_putchar_fd_main(void);
void	ft_putstr_fd_main(void);
void	ft_putendl_fd_main(void);
void	ft_putnbr_fd_main(void);
*/
void	ft_lstadd_back_main(void);
void	ft_lstadd_front_main(void);
void	ft_lstclear_main(void);
void	ft_lstdelone_main(void);
void	ft_lstiter_main(void);
void	ft_lstlast_main(void);
void	ft_lstmap_main(void);
void	ft_lstnew_main(void);
void	ft_lstsize_main(void);

#endif
