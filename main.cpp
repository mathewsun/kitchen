#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtCore/QCommandLineOption>
#include <QtCore/QCommandLineParser>
#include <QQmlContext>
#include <QQmlEngine>
#include "QQuickView"
#include "appcore.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    qmlRegisterSingletonType <AppCore>("AppCore",1,0,"AppCore",singeltonProvider);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
        if (engine.rootObjects().isEmpty())
            return  -1;
    return app.exec();
}
