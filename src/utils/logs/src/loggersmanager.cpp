#include "loggersmanager.h"

#ifdef SPDLOG_DEFINED
#include "loggers/spdlogger.h"
#else
#include "loggers/mocklogger.h"
#endif //SPDLOG_DEFINED

namespace logs
{

std::shared_ptr<ILogger> LoggersManager::s_ConsoleLogger = nullptr;

void LoggersManager::GetConsoleLogger_Callback(void)
{
    if (!s_ConsoleLogger)
    {
        Init();
    }
}


void LoggersManager::Init(void)
{
#ifdef SPDLOG_DEFINED
    s_ConsoleLogger = std::make_shared<SPDLogger>();
#else
    s_ConsoleLogger = std::make_shared<MockLogger>();
#endif //SPDLOG_DEFINED
}

}
