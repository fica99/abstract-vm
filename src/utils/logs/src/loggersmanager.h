#pragma once

#include <memory>

namespace logs
{

class ILogger;

class LoggersManager
{
public:
    inline static std::shared_ptr<ILogger>& GetConsoleLogger() { GetConsoleLogger_Callback(); return s_ConsoleLogger; }

private:
    static void Init(void);
    static void GetConsoleLogger_Callback(void);
private:
    static std::shared_ptr<ILogger> s_ConsoleLogger;
};

}
