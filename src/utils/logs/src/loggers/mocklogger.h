#pragma once

#include "ilogger.h"

namespace logs
{

class MockLogger : public ILogger
{
public:
    ~MockLogger(void) override;
    void Error(...) override;
    void Debug(...) override;
    void Info(...)  override;
};

}
