/**
 * @file main.cpp
 * @author Filip Crnobrnja (fica.c@yandex.ru)
 * @brief 
 * @version 0.1
 * @date 11-06-2022
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include <precomp.h>

avmBeginNamespace

void Init(int argc, char **argv)
{
    avm::Logs::Init();
}

avmEndNamespace

int main(int argc, char **argv)
{
    avm::Init(argc, argv);
    return (0);
}
