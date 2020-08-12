#include "appcore.h"

AppCore::AppCore()
{
    urlServer = "https://www.rentoolo.ru/api/";
    connect(&myApiQuery, &QNetworkAccessManager::finished, this, &AppCore::onReply);

    qDebug() << QSslSocket::supportsSsl() << QSslSocket::sslLibraryBuildVersionString() << QSslSocket::sslLibraryVersionString();
    getTopRecipes();
    getOneRecipe(2);
}

QVector<QString> AppCore::getVectorInstructionsUserAvatarImgUrl() const
{
    return vectorInstructionsUserAvatarImgUrl;
}

QVector<QString> AppCore::getVectorInstructionsUserName() const
{
    return vectorInstructionsUserName;
}

QVector<int> AppCore::getVectorInstructionsUserId() const
{
    return vectorInstructionsUserId;
}

QVector<int> AppCore::getVectorInstructionsCountLikes() const
{
    return vectorInstructionsCountLikes;
}

QVector<int> AppCore::getVectorInstructionsTimeMinutesToCook() const
{
    return vectorInstructionsTimeMinutesToCook;
}

QVector<QString> AppCore::getVectorInstructionsImageUrl() const
{
    return vectorInstructionsImageUrl;
}

QVector<QString> AppCore::getVectorInstructionsName() const
{
    return vectorInstructionsName;
}

QVector<QString> AppCore::getVectorTopUserAvatarImgUrl() const
{
    return vectorTopUserAvatarImgUrl;
}

QVector<QString> AppCore::getVectorTopUserName() const
{
    return vectorTopUserName;
}

QVector<int> AppCore::getVectorTopUserId() const
{
    return vectorTopUserId;
}

void AppCore::setVectorTopUserId(const QVector<int> &value)
{
    vectorTopUserId = value;
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

    else if(myUrl.indexOf("rentoolo.ru/api/recipe/") > -1){
        onReplyOneRecipe(reply);
    }

    else if(myUrl.indexOf("kitchen/Instructions") > -1){
        onReplyInstructions(reply);
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
    vectorTopUserId.clear();
    vectorTopUserName.clear();
    vectorTopUserAvatarImgUrl.clear();
    for(int i = 0; i < jArr.size(); i++){
        vectorTopReceptsName.append(jArr[i].toObject()["Name"].toString());
        vectorTopReceptsImageUrl.append( jArr[i].toObject()["ImgUrl"].toString());
        vectorTopReceptsTimeMinutesToCook.append(jArr[i].toObject()["TimeMinutesToCook"].toInt());
        vectorTopReceptsCountLikes.append(jArr[i].toObject()["CountLikes"].toInt());
        vectorTopUserId.append(jArr[i].toObject()["UserId"].toInt());
        vectorTopUserName.append(jArr[i].toObject()["UserName"].toString());
        vectorTopUserAvatarImgUrl.append(jArr[i].toObject()["UserAvatarImgUrl"].toString());
        //qDebug()<<vectorTopReceptsName;
    }
    signalLoadTopRecept();
}

void AppCore::onReplyOneRecipe(QNetworkReply *reply)
{
    QByteArray replyArray;
    while (!reply->atEnd()) {
        replyArray.append(reply->readLine());
    }
    QJsonDocument doc = QJsonDocument::fromJson(replyArray);
    QJsonObject jObj = doc.object();

    int id = jObj["Id"].toInt();
    int userId = jObj["UserId"].toInt();
    QString name = jObj["Name"].toString();
    QString discription = jObj["Discription"].toString();
    QDateTime created = QDateTime::fromString(jObj["Created"].toString() , "yyyy-MM-ddThh:mm:ss.zzz");
    QString imgUrl = jObj["ImgUrl"].toString();
    int countLikes = jObj["CountLikes"].toInt();
    int timeMinutesToCook = jObj["TimeMinutesToCook"].toInt();

    qDebug()<<id<<userId<<name<<discription;
    qDebug()<<created<<imgUrl<<countLikes<<timeMinutesToCook;

}

void AppCore::onReplyInstructions(QNetworkReply *reply)
{
    QByteArray replyArray;
    while (!reply->atEnd()) {
        replyArray.append(reply->readLine());
    }
    QJsonDocument doc = QJsonDocument::fromJson(replyArray);
    //qDebug() << replyArray;
    //qDebug() << doc;
    QJsonArray jArr = doc.array();

    vectorInstructionsName.clear();
    vectorInstructionsImageUrl.clear();
    vectorInstructionsTimeMinutesToCook.clear();
    vectorInstructionsCountLikes.clear();
    vectorInstructionsUserId.clear();
    vectorInstructionsUserName.clear();
    vectorInstructionsUserAvatarImgUrl.clear();

    for(int i = 0; i < jArr.size(); i++){
        /*vectorInstructionsName.append();
        vectorInstructionsImageUrl.append();
        vectorInstructionsTimeMinutesToCook.append();
        vectorInstructionsCountLikes.append();
        vectorInstructionsUserId.append();
        vectorInstructionsUserName.append();
        vectorInstructionsUserAvatarImgUrl.append();*/
    }
}

void AppCore::getTopRecipes()
{
    getHttpRequest("Kitchen/GetTopRecipes");
}

void AppCore::getOneRecipe(int id)
{
    getHttpRequest("recipe/" + QString::number(id));
}

void AppCore::getInstructions()
{
    getHttpRequest("kitchen/Instructions");
}

