/**
 * @file commandlinearguments.h
 * @author Filip Crnobrnja (fica.c@yandex.ru)
 * @brief 
 * @version 0.1
 * @date 12-06-2022
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#pragma once

#ifdef AVM_ARGUMENTUM_DEFINED
#include <argumentum/argparse.h>
#endif // AVM_ARGUMENTUM_DEFINED

avmBeginNamespace

class CommandlineArguments
{
public:
    static void Init(void);
#ifdef AVM_ARGUMENTUM_DEFINED
private:
    static argumentum::argument_parser s_Parser;
#endif // AVM_ARGUMENTUM_DEFINED
};

avmEndNamespace
