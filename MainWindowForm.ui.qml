import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0

Item {
    id: element
    width: 420
    height: 640
    property alias tabButton5Account: tabButton5Account
    property alias tabButton4ConsumerBasket: tabButton4ConsumerBasket
    property alias tabButton3Search: tabButton3Search
    property alias tabButton2Instructions: tabButton2Instructions
    property alias tabButton1Home: tabButton1Home
    property alias loader: loader



    Rectangle{
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: toolBar.top

        Loader
        {
            id: loader
            anchors.fill: parent
            //source: "First.qml"
        }
    }


    TabBar {
        id: toolBar
        y: 576
        height: 64
        focusPolicy: Qt.NoFocus
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        TabButton {
            id: tabButton1Home
            //text: qsTr("1")
            height: parent.height
            anchors.top: parent.top
            background: Rectangle{
                id: rectangleBatton1
                anchors.fill: parent
                color: "white"
            }

            Image {
                id: image1Home
                //anchors.fill: parent
                anchors.top: parent.top
                anchors.topMargin: parent.height * 0.1
                width: parent.width
                height: parent.height * 0.5
                source: parent.checked ? "Images/Home1.png" : "Images/Home0.png"
                fillMode: Image.PreserveAspectFit
            }

            Label{
                id: labelButton1
                anchors.horizontalCenter: parent.horizontalCenter
                y: image1Home.height + (parent.height - image1Home.height - font.pixelSize) / 2
                color: parent.checked ? "#0507ba" : "#202023"
                font.pixelSize: (parent.height - image1Home.height) * 0.4
                text: "Домой" //"#0507ba"
            }
        }

        TabButton {
            id: tabButton2Instructions
            //text: qsTr("2")
            height: parent.height
            anchors.top: parent.top
            background: Rectangle{
                anchors.fill: parent
                color: rectangleBatton1.color
            }

            Image {
                id: image2Instructions
                anchors.top: parent.top
                anchors.topMargin: image1Home.anchors.topMargin
                width: parent.width
                height: image1Home.height
                source: parent.checked ? "Images/Instructions1.png" : "Images/Instructions0.png"
                fillMode: Image.PreserveAspectFit
            }

            Label{
                anchors.horizontalCenter: parent.horizontalCenter
                y: labelButton1.y
                color: parent.checked ? "#0507ba" : "#202023"
                font.pixelSize: labelButton1.font.pixelSize
                text: "Инструкции" //"#0507ba"
            }
        }

        TabButton {
            id: tabButton3Search
            //text: qsTr("3")
            height: parent.height
            anchors.top: parent.top
            background: Rectangle{
                anchors.fill: parent
                color: rectangleBatton1.color
            }

            Image {
                id: image3Search
                anchors.top: parent.top
                anchors.topMargin: image1Home.anchors.topMargin
                width: parent.width
                height: image1Home.height
                source: parent.checked ? "Images/Search1.png" : "Images/Search0.png"
                fillMode: Image.PreserveAspectFit
            }

            Label{
                anchors.horizontalCenter: parent.horizontalCenter
                y: labelButton1.y
                color: parent.checked ? "#0507ba" : "#202023"
                font.pixelSize: labelButton1.font.pixelSize
                text: "Поиск" //"#0507ba"
            }
        }

        TabButton {
            id: tabButton4ConsumerBasket
            //text: qsTr("4")
            height: parent.height
            anchors.top: parent.top
            background: Rectangle{
                anchors.fill: parent
                color: rectangleBatton1.color
            }

            Image {
                id: image4Basket
                anchors.top: parent.top
                anchors.topMargin: image1Home.anchors.topMargin
                width: parent.width
                height: image1Home.height
                source: parent.checked ? "Images/ConsumerBasket1.png" : "Images/ConsumerBasket0.png"
                fillMode: Image.PreserveAspectFit
            }

            Label{
                anchors.horizontalCenter: parent.horizontalCenter
                y: labelButton1.y
                color: parent.checked ? "#0507ba" : "#202023"
                font.pixelSize: labelButton1.font.pixelSize
                text: "Покупки" //"#0507ba"
            }
        }

        TabButton {
            id: tabButton5Account
            //text: qsTr("5")
            height: parent.height
            anchors.top: parent.top
            background: Rectangle{
                anchors.fill: parent
                color: rectangleBatton1.color
            }

            Image {
                id: image5Account
                anchors.top: parent.top
                anchors.topMargin: image1Home.anchors.topMargin
                width: parent.width
                height: image1Home.height
                source: parent.checked ? "Images/Account1.png" : "Images/Account0.png"
                fillMode: Image.PreserveAspectFit
            }

            Label{
                anchors.horizontalCenter: parent.horizontalCenter
                y: labelButton1.y
                color: parent.checked ? "#0507ba" : "#202023"
                font.pixelSize: labelButton1.font.pixelSize
                text: "Профиль" //"#0507ba"
            }
        }
    }
}

/*##^##
Designer {
    D{i:2;anchors_width:360;anchors_x:44}D{i:6;anchors_x:0;anchors_y:0}D{i:10;anchors_x:0;anchors_y:0}
D{i:13;anchors_x:0;anchors_y:0}D{i:19;anchors_x:0;anchors_y:0}D{i:16;anchors_x:0;anchors_y:0}
}
##^##*/
