/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: statooin <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/16 03:23:07 by statooin          #+#    #+#             */
/*   Updated: 2020/02/16 03:32:20 by statooin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_atoi(char *str)
{
	int		sign;
	long	result;

	result = 0;
	sign = 1;
	while (*str == ' ' || *str == '\t' || *str == '\n'
			|| *str == '\r' || *str == '\v' || *str == '\f')
		str++;
	sign = (*str == '-') ? -1 : 1;
	str = (*str == '+' || *str == '-') ? str + 1 : str;
	while (*str >= '0' && *str <= '9')
	{
		if (result > result * 10 + *str - '0')
			return ((sign > 0) ? -1 : 0);
		result = result * 10 + *str - '0';
		str++;
	}
	return (result * sign);
}
