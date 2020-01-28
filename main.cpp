#include "mainwindow.hpp"
#include <iostream>
#include "Board.hpp"
#include "Game.hpp"

#include <QApplication>

using std::cout;
using std::endl;

int main(int argc, char *argv[])
{
    Game game = Game();
    game.takeTurn('O');

    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    return a.exec();
}
