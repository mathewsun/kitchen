import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0

HomeForm {
    Component.onCompleted: {
        //swipeView.currentIndex = 1
        for(var i = 0; i < AppCore.getVectorTopReceptsName().length; i++){
            mymodelSwipeView.append({name: AppCore.getVectorTopReceptsName()[i] ,
                                        likesNumber: AppCore.getVectorTopReceptsCountLikes()[i] ,
                                        timeText: AppCore.getVectorTopReceptsTimeMinutesToCook()[i] + " min",
                                        userName: "User Name" + i,
                                        imageUrl: AppCore.getVectorTopReceptsImageUrl()[i]})
        }
    }
}
