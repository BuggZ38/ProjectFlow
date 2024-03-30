#ifndef APP_H
#define APP_H

#include "lib.h"

class App{

private:
    std::string appVersion;
    std::string appName;
    void startTitle(std::string, std::string);

public:
    App();
    ~App();
    std::string getAppName();
    std::string getAppVersion();
    void clearConsole();
    void printText(std::string);


};



#endif