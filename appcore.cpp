#include "appcore.h"

AppCore::AppCore()
{
    urlServer = "https://www.rentoolo.ru/api/Kitchen/";
    connect(&myApiQuery, &QNetworkAccessManager::finished, this, &AppCore::onReply);

    qDebug() << QSslSocket::supportsSsl() << QSslSocket::sslLibraryBuildVersionString() << QSslSocket::sslLibraryVersionString();
    getTopRecipes();
}

QVector<int> AppCore::getVectorTopReceptsCountLikes() const
{
    return vectorTopReceptsCountLikes;
}

QVector<int> AppCore::getVectorTopReceptsTimeMinutesToCook() const
{
    return vectorTopReceptsTimeMinutesToCook;
}

QVector<QString> AppCore::getVectorTopReceptsImageUrl() const
{
    return vectorTopReceptsImageUrl;
}

QVector<QString> AppCore::getVectorTopReceptsName() const
{
    return vectorTopReceptsName;
}

void AppCore::startAppCore()
{

}

void AppCore::onReply(QNetworkReply *reply)
{
    qDebug() << "onReply";
    /*QByteArray replyArray;
    while (!reply->atEnd()) {
        replyArray.append(reply->readLine());
    }*/

    //QJsonDocument doc = QJsonDocument::fromJson(replyArray);

    QString myUrl = reply->url().toString();
    if(myUrl.endsWith("/GetTopRecipes")){
        //qDebug()<<"yyyy";
        onReplyTopRecipes(reply);
    }

    //qDebug() << doc;
    reply->deleteLater();
}

void AppCore::getHttpRequest(QString urlRequest)
{
    QNetworkRequest request;
    request.setHeader(QNetworkRequest::ContentTypeHeader,"application/json");
    request.setUrl(QUrl(urlServer + urlRequest));
    request.setAttribute(QNetworkRequest::FollowRedirectsAttribute, true); //разрешает перенаправление
    myApiQuery.get(request);
}

void AppCore::onReplyTopRecipes(QNetworkReply *reply)
{
    QByteArray replyArray;
    while (!reply->atEnd()) {
        replyArray.append(reply->readLine());
    }
    QJsonDocument doc = QJsonDocument::fromJson(replyArray);
    //qDebug() << replyArray;
    //qDebug() << doc;
    QJsonArray jArr = doc.array();

    vectorTopReceptsName.clear();
    vectorTopReceptsImageUrl.clear();
    vectorTopReceptsTimeMinutesToCook.clear();
    vectorTopReceptsCountLikes.clear();
    for(int i = 0; i < jArr.size(); i++){
        vectorTopReceptsName.append(jArr[i].toObject()["Name"].toString());
        vectorTopReceptsImageUrl.append( jArr[i].toObject()["ImgUrl"].toString());
        vectorTopReceptsTimeMinutesToCook.append(jArr[i].toObject()["TimeMinutesToCook"].toInt());
        vectorTopReceptsCountLikes.append(jArr[i].toObject()["CountLikes"].toInt());
        //qDebug()<<vectorTopReceptsName;
    }
    signalLoadTopRecept();
}

void AppCore::getTopRecipes()
{
    getHttpRequest("GetTopRecipes");
}

