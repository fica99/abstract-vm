#include <precomp.h>

namespace avm
{

static void InitializeEasyLogging(int argc, char **argv)
{
    START_EASYLOGGINGPP(argc, argv);
    el::Configurations conf("./configs/easyloggingpp.conf");
    el::Loggers::reconfigureLogger("default", conf);

    el::Loggers::addFlag(el::LoggingFlag::NewLineForContainer);
    el::Loggers::addFlag(el::LoggingFlag::LogDetailedCrashReason);
    el::Loggers::addFlag(el::LoggingFlag::CreateLoggerAutomatically);
}

}

int main(int argc, char **argv)
{
    avm::InitializeEasyLogging(argc, argv);
    return (0);
}
