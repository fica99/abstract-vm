/**
 * @file logs.h
 * @author Filip Crnobrnja (fica.c@yandex.ru)
 * @brief 
 * @version 0.1
 * @date 11-06-2022
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#pragma once

#include <memory>

#ifdef AVM_SPDLOG_DEFINED
#include <spdlog/spdlog.h>
#endif // AVM_SPDLOG_DEFINED

avmBeginNamespace

class Logs
{
public:
    static void Init(void);
#ifdef AVM_SPDLOG_DEFINED
    inline static std::shared_ptr<spdlog::logger>& GetConsoleLogger() { return s_ConsoleLogger; }

private:
    static void InitConsoleLogger(void);
private:
    static std::shared_ptr<spdlog::logger> s_ConsoleLogger;
#endif // AVM_SPDLOG_DEFINED
};

avmEndNamespace

#ifdef AVM_SPDLOG_DEFINED

#define AVM_CONSOLE_ERROR(...) ::avm::Log::GetConsoleLogger()->error(__VA_ARGS__)
#define AVM_CONSOLE_WARN(...) ::avm::Log::GetConsoleLogger()->warn(__VA_ARGS__)
#define AVM_CONSOLE_INFO(...) ::avm::Log::GetConsoleLogger()->info(__VA_ARGS__)

#else

#define AVM_CONSOLE_ERROR(...)
#define AVM_CONSOLE_WARN(...)
#define AVM_CONSOLE_INFO(...)

#endif // !AVM_SPDLOG_DEFINED
