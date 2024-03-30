#include "../includes/include.h"

using namespace std;

int main(void)
{
    App *ui = new App();

    string ab = "hello world!\n";
    ui->printText(BLUE_TEXT + ab);


    delete ui;
    return EXIT_SUCCESS;
}