/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm_bonus.h                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bmarilli <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/10 19:03:56 by bmarilli          #+#    #+#             */
/*   Updated: 2021/02/10 19:10:27 by bmarilli         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_BONUS_H
# define LIBASM_BONUS_H

typedef struct		s_list
{
	void			*data;
	struct s_list	*next;
}					t_list;

int					ft_list_size(t_list *list);
void				ft_list_push_front(t_list **list, void *data);
void				ft_list_sort(t_list **list, int	(*cmp)());
int					ft_atoi_base(char *str, char *base);
void				ft_list_remove_if(t_list **list,\
						void *data_ref, int (*cmp)(), void (*free_fnc)(void *));

#endif
