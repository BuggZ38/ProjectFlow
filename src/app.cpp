#include "../includes/include.h"

using namespace std;

App::App()
{
    cout << BLINKING <<"Starting System..." << RESET << endl;

    appVersion = VERSION;
    appName = APPNAME;

    clearConsole();
    startTitle(appVersion, appName);
}


void App::startTitle(string vers, string name)
{
    cout << "App Version : " << vers << endl;
    cout << "App Name : " << name << endl;
    cout << endl << "---" << endl << endl;
    cout << "Project Flow" << endl;
    cout << endl << "---" << endl << endl;
}


string App::getAppName()
{
    return appName;
}


string App::getAppVersion()
{
    return appVersion;
}


void App::clearConsole()
{
    system("clear");
}


void App::printText(string text)
{
    cout << text << RESET;
}


App::~App()
{
    cout << "Fermeture de l'application" << endl;
}