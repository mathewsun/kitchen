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
#include "QDateTime"


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
    Q_INVOKABLE QVector <int> vectorTopUserId;
    Q_INVOKABLE QVector <QString> vectorTopUserName;
    Q_INVOKABLE QVector <QString> vectorTopUserAvatarImgUrl;

    //Instructions
    Q_INVOKABLE QVector<int> vectorInstructionsId;
    Q_INVOKABLE QVector<QString> vectorInstructionsName;
    Q_INVOKABLE QVector<QString> vectorInstructionsYouTubeUrl;
    Q_INVOKABLE QVector<int> vectorInstructionsCategory;

signals:
    void signalLoadTopRecept();


public slots:
    Q_INVOKABLE void startAppCore();
    //server
    Q_INVOKABLE void getTopRecipes();
    Q_INVOKABLE void getOneRecipe(int id);
    Q_INVOKABLE void getInstructions();
    //TopRecepts
    Q_INVOKABLE QVector<QString> getVectorTopReceptsName() const;
    Q_INVOKABLE QVector<QString> getVectorTopReceptsImageUrl() const;
    Q_INVOKABLE QVector<int> getVectorTopReceptsTimeMinutesToCook() const;
    Q_INVOKABLE QVector<int> getVectorTopReceptsCountLikes() const;
    Q_INVOKABLE QVector<int> getVectorTopUserId() const;
    Q_INVOKABLE void setVectorTopUserId(const QVector<int> &value);
    Q_INVOKABLE QVector<QString> getVectorTopUserName() const;
    Q_INVOKABLE QVector<QString> getVectorTopUserAvatarImgUrl() const;
    //Instructions
    QVector<int> getVectorInstructionsId() const;
    QVector<QString> getVectorInstructionsName() const;
    QVector<QString> getVectorInstructionsYouTubeUrl() const;
    QVector<int> getVectorInstructionsCategory() const;


private slots:
    void onReply(QNetworkReply* reply);
    void getHttpRequest(QString urlRequest);
    void onReplyTopRecipes(QNetworkReply* reply);
    void onReplyOneRecipe(QNetworkReply* reply); //сделать возврат в класс и придумать что с этим делать
    void onReplyInstructions(QNetworkReply* reply);

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
