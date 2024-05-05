#ifndef APP_H
#define APP_H

#include "lib.h"

class App{

private:
    std::string appVersion;
    std::string appName;
    std::string projectName;
    std::string projectAuthor;
    std::string projectDescription;
    std::string projectVersion;
    std::string projectPath;
    std::string projectType;
    void startTitle(std::string, std::string);
    int saveProject(int);
    int delProject(int);

public:
    App();
    ~App();
    std::string getAppName();
    std::string getAppVersion();
    int startProject();
    void clearConsole();
    void printText(std::string);


};



#endif