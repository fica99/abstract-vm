#pragma once

#include "ilogger.h"

namespace logs
{

class SPDLogger : public ILogger
{
public:
    ~SPDLogger(void) override;
    void Error(...) override;
    void Debug(...) override;
    void Info(...)  override;
};

}
