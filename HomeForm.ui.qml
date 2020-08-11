import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0

Item {
    property alias swipeView: swipeView
    property alias mymodelSwipeView: mymodelSwipeView

    height: 640
    width: 420

    Label {
        id: label
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width * 0.03
        anchors.topMargin: parent.width * 0.03
        text: qsTr("Идеи завтраков и закусок")
        font.pixelSize: parent.width * 0.06
        font.bold: true
    }

    SwipeView {
        id: swipeView
        anchors.top: label.bottom
        anchors.topMargin: label.anchors.leftMargin
        anchors.horizontalCenter: parent.horizontalCenter
        height: width * 0.85
        //width: parent.width
        anchors.left: parent.left
        //anchors.leftMargin: label.anchors.leftMargin
        anchors.right: parent.right
        //anchors.rightMargin: label.anchors.leftMargin
        currentIndex: 0
        clip: true

        Repeater{
            model: ListModel{

                id: mymodelSwipeView
            }

            Rectangle{

                Rectangle{
                    id: rectangleWithImage
                    height: width * 0.6
                    anchors.horizontalCenter: parent.horizontalCenter
                    //width: parent.width * 0.99
                    anchors.left: parent.left
                    anchors.leftMargin: label.anchors.leftMargin
                    anchors.right: parent.right
                    anchors.rightMargin: label.anchors.leftMargin
                    radius: parent.width * 0.02

                    Image {
                        id: imageTopRecept
                        anchors.fill: parent
                        source: model.imageUrl
                        fillMode: Image.Stretch

                        MouseArea{
                            anchors.fill: parent
                            //onClicked: imageHeart.source = "Images/heartBad.png"
                        }

                        Rectangle{
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            height: parent.height * 0.2
                            gradient: Gradient {
                                GradientStop { position: 0.0; color: "#00000000" }
                                GradientStop { position: 1.0; color: "#80808099" }
                            }
                        }
                    }

                    /*Text {
                        anchors.centerIn: parent
                        text: model.name
                    }*/

                    Image {
                        id: imageHeart
                        height: parent.height * 0.1
                        width: height
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: height * 0.3
                        anchors.left: parent.left
                        anchors.leftMargin: anchors.bottomMargin
                        source: "Images/heartGood.png"
                        fillMode: Image.Stretch

                        MouseArea{
                            anchors.fill: parent
                            onClicked: imageHeart.source = "Images/heartBad.png"
                        }
                    }

                    Label{
                        id: labelLikesNumber
                        anchors.verticalCenter: imageHeart.verticalCenter
                        anchors.left: imageHeart.right
                        anchors.leftMargin: imageHeart.height * 0.3
                        text: model.likesNumber
                        font.pixelSize: imageHeart.height * 0.7
                        color: "white"
                    }

                    Label{
                        anchors.verticalCenter: labelLikesNumber.verticalCenter
                        anchors.right: parent.right
                        anchors.rightMargin: imageHeart.anchors.leftMargin
                        font.pixelSize: labelLikesNumber.font.pixelSize
                        color: labelLikesNumber.color
                        text: model.timeText
                    }

                }

                /*Rectangle{
                    anchors.top: rectangleWithImage.bottom
                    width: rectangleWithImage.width
                    height: width * 0.1
                    color: "orange"
                }*/

                Label{
                    id: labelName
                    anchors.top: rectangleWithImage.bottom
                    anchors.topMargin: parent.width * 0.02
                    anchors.left: rectangleWithImage.left
                    font.pixelSize: parent.width * 0.05
                    text: model.name
                }

                Image {
                    id: imageUserIcon
                    height: parent.width * 0.12
                    width: height
                    anchors.top: labelName.bottom
                    anchors.topMargin: parent.width * 0.04
                    anchors.left: rectangleWithImage.left
                    source: model.userImage
                    fillMode: Image.Stretch
                }

                Label{
                    id: userName
                    anchors.verticalCenter: imageUserIcon.verticalCenter
                    anchors.left: imageUserIcon.right
                    anchors.leftMargin: imageUserIcon.height * 0.1
                    font.pixelSize: imageUserIcon.height * 0.6
                    text: model.userName
                }

            }
        }


    }

    PageIndicator{
        id: indicator
        count: swipeView.count
        currentIndex: swipeView.currentIndex
        anchors.top: swipeView.bottom
        anchors.horizontalCenter: swipeView.horizontalCenter
    }

}
