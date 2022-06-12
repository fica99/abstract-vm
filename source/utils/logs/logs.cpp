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

#include <spdlog/sinks/stdout_color_sinks.h>

avmBeginNamespace

#ifdef AVM_SPDLOG_DEFINED
std::shared_ptr<spdlog::logger>	Log::s_ConsoleLogger = nullptr;
#endif // AVM_SPDLOG_DEFINED

void Log::Init(void)
{
#ifdef AVM_SPDLOG_DEFINED
    InitConsoleLogger();
#endif // AVM_SPDLOG_DEFINED
}

#ifdef AVM_SPDLOG_DEFINED
void Log::InitConsoleLogger(void)
{
    s_ConsoleLogger = spdlog::stdout_color_mt("ConsoleLogger");
    s_ConsoleLogger->set_pattern("%^%l%$: %v");
    s_ConsoleLogger->set_level(spdlog::level::info);
}
#endif // AVM_SPDLOG_DEFINED

avmEndNamespace
