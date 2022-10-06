#pragma once

#include <logs/src/loggersmanager.h>

#ifdef ENABLE_LOGGING

#define CONSOLE_ERROR(...) LoggersManager::GetConsoleLogger()->Error(__VA_ARGS__)
#define CONSOLE_DEBUG(...) LoggersManager::GetConsoleLogger()->Debug(__VA_ARGS__)
#define CONSOLE_INFO(...)  LoggersManager::GetConsoleLogger()->Info(__VA_ARGS__)

#else

#define CONSOLE_ERROR(...) ((void) 0)
#define CONSOLE_DEBUG(...) ((void) 0)
#define CONSOLE_INFO(...)  ((void) 0)

#endif
