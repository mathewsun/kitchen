#ifndef APPCORE_H
#define APPCORE_H
#include "QObject"
#include "QDebug"
#include <QFile>
#include <QQmlEngine>
//#include "mymodel.h"
//#include "QSqlTableModel"


class AppCore: public QObject
{
    Q_OBJECT
public:
    AppCore();

    ~AppCore(){;}

public slots:
    Q_INVOKABLE void startAppCore();

};

static QObject *singeltonProvider(QQmlEngine *engine, QJSEngine *scriptEngine)
{
    Q_UNUSED(engine);
    Q_UNUSED(scriptEngine);

    AppCore *appCore=new AppCore();
    return appCore;
}

#endif // APPCORE_H
