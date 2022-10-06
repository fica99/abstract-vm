#pragma once

namespace logs
{

class ILogger
{
public:
    virtual ~ILogger(void) {}
    virtual void Error(...) = 0;
    virtual void Debug(...) = 0;
    virtual void Info(...) = 0;
};

}
