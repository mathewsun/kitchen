#ifndef APPCORE_H
#define APPCORE_H
#include "QObject"
#include "QDebug"
#include <QFile>
#include <QQmlEngine>
#include "QtNetwork/QNetworkAccessManager"
#include "QtNetwork/QNetworkRequest"
#include "QtNetwork/QNetworkReply"
#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonValue>


class AppCore: public QObject
{
    Q_OBJECT
public:
    AppCore();

    ~AppCore(){;}

    //TopRecepts
    Q_INVOKABLE QVector<QString> vectorTopReceptsName;
    Q_INVOKABLE QVector<QString> vectorTopReceptsImageUrl;
    Q_INVOKABLE QVector<int> vectorTopReceptsTimeMinutesToCook;
    Q_INVOKABLE QVector<int> vectorTopReceptsCountLikes;

signals:
    void signalLoadTopRecept();


public slots:
    Q_INVOKABLE void startAppCore();
    Q_INVOKABLE void getTopRecipes();
    //TopRecepts
    Q_INVOKABLE QVector<QString> getVectorTopReceptsName() const;
    Q_INVOKABLE QVector<QString> getVectorTopReceptsImageUrl() const;
    Q_INVOKABLE QVector<int> getVectorTopReceptsTimeMinutesToCook() const;
    Q_INVOKABLE QVector<int> getVectorTopReceptsCountLikes() const;

private slots:
    void onReply(QNetworkReply* reply);
    void getHttpRequest(QString urlRequest);
    void onReplyTopRecipes(QNetworkReply* reply);

private:
    QString urlServer;
    QNetworkAccessManager myApiQuery;
    //QNetworkAccessManager *apiQuery = new QNetworkAccessManager;

};

static QObject *singeltonProvider(QQmlEngine *engine, QJSEngine *scriptEngine)
{
    Q_UNUSED(engine);
    Q_UNUSED(scriptEngine);

    AppCore *appCore=new AppCore();
    return appCore;
}

#endif // APPCORE_H
