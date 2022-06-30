/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   mainlibasm.h                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/08 19:01:12 by alienard          #+#    #+#             */
/*   Updated: 2020/03/11 18:03:24 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MAINLIBASM_H
# define MAINLIBASM_H

#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <stdlib.h>
#include <signal.h>

typedef struct		s_list
{
	void			*data;
	struct s_list	*next;
} 					t_list;

typedef void (*sig_t) (int);

void	red(void);
void	green(void);
void	reset(void);

void	ft_print_result(t_list *elem);
t_list	*ft_lstnew(void *content);
void	ft_free_data(void *data);

void	ft_strlen_main(void);
void	ft_strcpy_main(void);
void	ft_strcmp_main(void);
void	ft_write_main(void);
void	ft_read_main(void);
void	ft_strdup_main(void);

void	ft_list_size_main(void);
void	ft_list_push_front_main(void);
void	ft_list_remove_if_main(void);
void	ft_list_sort_main(void);
void	ft_atoi_base_main(void);

size_t	ft_write(int fildes, const void *buf, size_t nbyte);
size_t	ft_strlen(const char *s);
char	*ft_strcpy(char * dst, const char * src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_read(int fildes, void *buf, size_t nbyte);
char	*ft_strdup(const char *s1);

int		ft_atoi_base(char *str, char *base);
void 	ft_list_push_front(t_list **begin_list, void *data);
int		ft_list_size(t_list *begin_list);
void	ft_list_remove_if(t_list **begin_list, void *data_ref, int (*cmp)(), void (*free_fct)(void *));
void	ft_list_sort(t_list **begin_list, int (*cmp)());

#endif
