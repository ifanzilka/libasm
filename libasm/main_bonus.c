#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include "libasm_bonus.h"
#include "libasm.h"
#include <sys/errno.h>
#include <unistd.h>
#include <string.h>

void	printf_list(t_list *list)
{
	int i;

	i = 1;
	while (list)
	{
		printf("Element # %d : %s\n", i++, list->data);
		list = list->next;
	}
}

void	ft_free(void *ptr)
{
	if (ptr)
		free(ptr);
}
/*
int		main(void)
{
	t_list *list;
	
	list = NULL;
	


	printf("------------ft_list_size----------------\n");
	printf("List size = %d\n~~~~~~~~~~~~~~~~\n", ft_list_size(list));
	printf("------------ft_list_push_front----------\n");
	ft_list_push_front(&list, strdup("1"));
	ft_list_push_front(&list, strdup("2"));
	ft_list_push_front(&list, strdup("3"));
	ft_list_push_front(&list, strdup("4"));
	ft_list_push_front(&list, strdup("5"));
	printf("List size = %d\n~~~~~~~~~~~~~~~~\n", ft_list_size(list));
	printf_list(list);
	printf("------------ft_list_sort----------------\n");
	ft_list_sort(&list, strcmp);
	printf("List size = %d\n~~~~~~~~~~~~~~~~\n", ft_list_size(list));
	printf_list(list);
	printf("------------ft_list_remove_if-----------\n");
	ft_list_remove_if(&list, "2", strcmp, ft_free);
	printf("List size = %d\n~~~~~~~~~~~~~~~~\n", ft_list_size(list));
	printf_list(list);
	printf("------------ft_atoi_base----------------\n");
	char *str = "2A";
	char *base = "0123456789ABCDEF";
	printf("String %s in base \"%s\" = %d\n", str, base, ft_atoi_base(str, base));
	return (0);
}*/

int		main(void)
{
	t_list *list;
	list = NULL;

	printf("------------ft_list_size----------------\n");
	printf("List size = %d\n~~~~~~~~~~~~~~~~\n", ft_list_size(list));
	printf("------------ft_list_push_front----------\n");
	ft_list_push_front(&list, strdup("1"));
	ft_list_push_front(&list, strdup("2"));
	ft_list_push_front(&list, strdup("3"));
	ft_list_push_front(&list, strdup("4"));
	ft_list_push_front(&list, strdup("5"));
	printf("List size = %d\n~~~~~~~~~~~~~~~~\n", ft_list_size(list));
	printf_list(list);
	printf("------------ft_list_sort----------------\n");
	ft_list_sort(&list, strcmp);
	printf("List size = %d\n~~~~~~~~~~~~~~~~\n", ft_list_size(list));
	printf_list(list);
	printf("------------ft_list_remove_if-----------\n");
	ft_list_remove_if(&list, "2", strcmp, ft_free);
	printf("List size = %d\n~~~~~~~~~~~~~~~~\n", ft_list_size(list));
	printf_list(list);
	printf("------------ft_atoi_base----------------\n");
	char *str = "  --114983fsifo5723";
	char *base = "0123456789";
	printf("String %s in base \"%s\" = %d\n", str, base, ft_atoi_base(str, base));
	return (0);
}
