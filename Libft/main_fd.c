#include "/Users/dkoriaki/Desktop/42/libft/libft.h"

int main(int ac, char **av)
{
	
	ft_putchar_fd(*av[1], 1);
	ft_putendl_fd(av[2], 1);
	ft_putnbr_fd((int)av[3], 1);
	ft_putstr_fd(av[4], 1);
}
