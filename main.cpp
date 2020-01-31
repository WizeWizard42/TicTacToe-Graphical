#include "mainwindow.hpp"
#include "Board.hpp"
#include "Game.hpp"

#include <iostream>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

using std::cout;
using std::endl;

int main(int argc, char *argv[])
{
    Game game = Game();
    game.takeTurn('O');

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
