/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bmarilli <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/05 19:00:25 by bmarilli          #+#    #+#             */
/*   Updated: 2021/02/13 18:22:59 by bmarilli         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <stdio.h>

void	ft_putchar(char *ch);


int	main(void)
{
	char buf[1000];

		
	printf("len : %zu\n",ft_strlen("21 school"));
	//ft_putchar("1");
	ft_write(1,"Hello,world!\n",13);
	ft_read(1,buf,10);

	printf("len : %zu \n",ft_strlen("ok"));
	
	char src[100] = "Hello";
	char dst[100];
	dst[0] = 0;
	ft_strcpy(dst,src);
	printf("Src : !%s!\n",dst);
	
	printf("strcmp : !%d!\n",strcmp("5233","5233"));
	printf("strcmp : !%d!\n",ft_strcmp("5233","5233"));

	printf("test strdup !%s!\n",ft_strdup(buf));
	return (0);
}
