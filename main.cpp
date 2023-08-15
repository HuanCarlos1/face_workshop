#include <QtGui/QApplication>
#include "gui_paramdeform.h"
#include "gui_performancemonitor.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    GUI_ParamDeform w;
    w.show();
    return a.exec();
}
