/*
** EPITECH PROJECT, 2019
** test criterion minilibc
** File description:
** criterion.c
*/

#include <criterion/criterion.h>

Test(strlen, str)
{
    cr_assert_eq(11, strlen("Hello World"));
}