#include "CClickableLabel.hpp"
#include "Game.hpp"

#include <iostream>

#include <QApplication>
#include <QObject>
#include <QWindow>

using std::cout;
using std::endl;

void CClickableLabel::mousePressEvent(QMouseEvent *event)
{
    QWindow *mainwindow = QApplication::topLevelWindows()[0];
    mainwindow->findChild<Game>("game").takeTurn(this->objectName()[4].digitValue(), this->objectName()[5].digitValue());
};
