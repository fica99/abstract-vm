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

#ifdef AVM_EASYLOGGINGPP_DEFINED
#include <easyloggingpp/src/easylogging++.h>
#endif // AVM_EASYLOGGINGPP_DEFINED

avmBeginNamespace

namespace LoggingHelper
{

#ifdef AVM_EASYLOGGINGPP_DEFINED
static void InitializeEasyloggingpp(int argc, char **argv)
{
    START_EASYLOGGINGPP(argc, argv);
    el::Configurations conf("./configs/easyloggingpp.conf");
    el::Loggers::reconfigureLogger("default", conf);

    el::Loggers::addFlag(el::LoggingFlag::NewLineForContainer);
    el::Loggers::addFlag(el::LoggingFlag::LogDetailedCrashReason);
    el::Loggers::addFlag(el::LoggingFlag::CreateLoggerAutomatically);
}
#endif // AVM_EASYLOGGINGPP_DEFINED

void InitializeLogging(int argc, char **argv)
{
#ifdef AVM_EASYLOGGINGPP_DEFINED
    InitializeEasyloggingpp(argc, argv);
#endif // AVM_EASYLOGGINGPP_DEFINED
}

}

avmEndNamespace
