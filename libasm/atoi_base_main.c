/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   atoi_base_main.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alienard <alienard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/10 12:29:37 by alienard          #+#    #+#             */
/*   Updated: 2020/03/12 17:24:07 by alienard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mainlibasm.h"

static int		ft_check_base(char *base)
{
	int i;
	int j;

	i = 0;
	if (!base || strlen(base) <= 1)
		return (-1);
	while (base[i])
	{
		if ((9 <= base[i] && base[i] <= 13) || base[i] == 32
				|| base[i] == '-' || base[i] == '+')
			return (-1);
		j = i + 1;
		while (base[j])
		{
			if (base[i] == base[j])
				return (-1);
			j++;
		}
		i++;
	}
	return (1);
}

static int		ft_inbase(char s1, char *s2)
{
	int i;

	i = 0;
	while (s2[i])
	{
		if (s1 == s2[i])
			return (i);
		i++;
	}
	return (-1);
}

int				atoi_base(char *str, char *base)
{
	int	i;
	int	ret;
	int	neg;
	int	err;

	i = 0;
	ret = 0;
	neg = 1;
	if (!str || !base || ft_check_base(base) == -1)
		return (0);
	while (((9 <= str[i] && str[i] <= 13) || str[i] == 32))
		i++;
	while ((str[i] == '-' || str[i] == '+'))
	{
		(str[i] == '-') ? neg = -neg : 0;
		i++;
	}
	while ((err = ft_inbase(str[i], base) >= 0) && str[i])
	{
		ret = ret * strlen(base) + ft_inbase(str[i], base);
		i++;
	}
	if (err == -1)
		return (0);
	return (ret * neg);
}

void	ft_atoi_base_main(void)
{
	char	*str;
	char	*inv_str;
	char	*base;
	char	*inv_base;
	int		fd1;
	int		fd2;

	fd1 = open("atoi_base.txt", O_WRONLY | O_CREAT | O_TRUNC, 0777);
	fd2 = open("ft_atoi_base.txt", O_WRONLY | O_CREAT | O_TRUNC, 0777);

	str = "  \t\t+++11";
	base = "01";
	dprintf(fd1, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, base, atoi_base(str, base));
	dprintf(fd2, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, base, ft_atoi_base(str, base));
	str = "  \t\t++---+1CA";
	base = "0123456789ABCDEF";
	dprintf(fd1, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, base, atoi_base(str, base));
	dprintf(fd2, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, base, ft_atoi_base(str, base));
	str = "		---2147483648";
	base = "0123456789";
	dprintf(fd1, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, base, atoi_base(str, base));
	dprintf(fd2, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, base, ft_atoi_base(str, base));

	inv_base = "1";
	dprintf(fd1, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, inv_base, atoi_base(str, inv_base));
	dprintf(fd2, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, inv_base, ft_atoi_base(str, inv_base));

	inv_base = "";
	dprintf(fd1, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, inv_base, atoi_base(str, inv_base));
	dprintf(fd2, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, inv_base, ft_atoi_base(str, inv_base));
	
	inv_base = "0123456788";
	dprintf(fd1, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, inv_base, atoi_base(str, inv_base));
	dprintf(fd2, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, inv_base, ft_atoi_base(str, inv_base));
	
	inv_base = NULL;
	dprintf(fd1, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, inv_base, atoi_base(str, inv_base));
	dprintf(fd2, "str:|%s|\nbase:|%s|\n ret:|%d|\n",str, inv_base, ft_atoi_base(str, inv_base));
	
	inv_str = "poneyvif";
	dprintf(fd1, "str:|%s|\nbase:|%s|\n ret:|%d|\n",inv_str, base, atoi_base(inv_str, base));
	dprintf(fd2, "str:|%s|\nbase:|%s|\n ret:|%d|\n",inv_str, base, ft_atoi_base(inv_str, base));
	
	inv_str = "";
	dprintf(fd1, "str:|%s|\nbase:|%s|\n ret:|%d|\n",inv_str, base, atoi_base(inv_str, base));
	dprintf(fd2, "str:|%s|\nbase:|%s|\n ret:|%d|\n",inv_str, base, ft_atoi_base(inv_str, base));
	
	inv_str = NULL;
	dprintf(fd1, "str:|%s|\nbase:|%s|\n ret:|%d|\n",inv_str, base, atoi_base(inv_str, base));
	dprintf(fd2, "str:|%s|\nbase:|%s|\n ret:|%d|\n",inv_str, base, ft_atoi_base(inv_str, base));
	
	inv_str = "  \t\n++--  -+9";
	dprintf(fd1, "str:|%s|\nbase:|%s|\n ret:|%d|\n",inv_str, base, atoi_base(inv_str, base));
	dprintf(fd2, "str:|%s|\nbase:|%s|\n ret:|%d|\n",inv_str, base, ft_atoi_base(inv_str, base));
	close(fd1);
	close(fd2);
	
}
