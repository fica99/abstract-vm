/**
 * @file logs.cpp
 * @author Filip Crnobrnja (fica.c@yandex.ru)
 * @brief 
 * @version 0.1
 * @date 11-06-2022
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include <precomp.h>

#include "logs.h"

#ifdef AVM_SPDLOG_DEFINED
#include <spdlog/spdlog.h>
#endif // AVM_SPDLOG_DEFINED

avmBeginNamespace

namespace LoggingHelper
{


void InitializeLogging(int argc, char **argv)
{

}

}

avmEndNamespace
