import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0

Item {
    height: 640
    property alias buttonKitchen1Asian: buttonKitchen1Asian
    property alias buttonKitchen2Caucasine: buttonKitchen2Caucasine
    property alias buttonKitchen3Desert: buttonKitchen3Desert
    property alias buttonKitchen4European: buttonKitchen4European
    property alias buttonKitchen5Fish: buttonKitchen5Fish
    property alias buttonKitchen6Meat: buttonKitchen6Meat
    property alias buttonKitchen7Salads: buttonKitchen7Salads
    property alias buttonKitchen8Soups: buttonKitchen8Soups
    property alias buttonKitchen9Vegetariasm: buttonKitchen9Vegetariasm
    property alias mouseAreaAllRecepts: mouseAreaAllRecepts
    width: 420

    Rectangle{
        id: topRectangle
        color: "#e0dfdf"
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        height: parent.width * 0.25
        z: 1


        Label {
            id: label
            text: qsTr("Поиск")
            anchors.top: parent.top
            anchors.topMargin: font.pixelSize * 0.3
            font.pixelSize: parent.width * 0.05
            font.bold: true
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.05
        }

        TextField {
            id: textFieldSearch
            placeholderText: qsTr("поиск")
            anchors.left: parent.left
            anchors.right: buttonSearch.left
            anchors.top: label.bottom
            anchors.leftMargin: buttonSearch.anchors.rightMargin
            anchors.rightMargin: buttonSearch.anchors.rightMargin
            anchors.topMargin: height * 0.3
            font.pixelSize: parent.width * 0.06
            height: font.pixelSize * 1.5
        }

        Button {
            id: buttonSearch
            text: qsTr("!")
            anchors.verticalCenter: textFieldSearch.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: height * 0.6
            width: height
            height: textFieldSearch.height
        }

    }


    Flickable{
        width: parent.width
        anchors.top: topRectangle.bottom
        anchors.topMargin: width * 0.03
        anchors.bottom: parent.bottom
        contentWidth: width
        contentHeight: labelAllRecepts.y + labelAllRecepts.height *2
        clip: true



        /*
        Button {
            id: buttonFilterLeft
            width: parent.width * 0.45
            x: (parent.width * 0.5 - width) / 2
            anchors.top: textFieldSearch.bottom
            anchors.topMargin: height * 0.25
            text: qsTr("Фильтры (22)")
            font.pixelSize: width * 0.1
        }

        Button {
            id: buttonFilterRight
            width: buttonFilterLeft.width
            x: parent.width * 0.5 + (parent.width * 0.5 - width) / 2
            y: buttonFilterLeft.y
            Label{
                id: labelButtonFilterRight
                wrapMode: Text.WordWrap
                font.pixelSize: buttonFilterLeft.font.pixelSize
                text: ""
            }
        }
*/
        Rectangle{
            id: rectangleWithButtonKitchen
            width: parent.width
            height: buttonKitchen7Salads.y + buttonKitchen7Salads.height
            //anchors.top: buttonFilterLeft.bottom
            anchors.topMargin: width * 0.03

            Button{
                id: buttonKitchen1Asian
                width: parent.width * 0.3
                height: width * 1.5
                anchors.left: parent.left
                anchors.leftMargin: (parent.width - width*3)/4

                Image {
                    id: image1
                    width: parent.width
                    height: width
                    fillMode: Image.PreserveAspectFit
                    source: "Images/SearchPage/asianCooking.png"
                }

                Label{
                    id: label1Kitchen
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Азиатская кухня"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.bottom: parent.bottom
                    anchors.top: image1.bottom
                    anchors.topMargin: -parent.width * 0.2
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: width * 0.15
                }

            }

            Button{
                id: buttonKitchen2Caucasine
                y: buttonKitchen2Caucasine.y
                height: buttonKitchen1Asian.height
                width: buttonKitchen1Asian.width
                anchors.left: buttonKitchen1Asian.right
                anchors.leftMargin: buttonKitchen1Asian.anchors.leftMargin

                Image {
                    id: image2
                    width: parent.width
                    height: width
                    fillMode: Image.PreserveAspectFit
                    source: "Images/SearchPage/caucasianCuisine.png"
                }

                Label{
                    id: label2Kitchen
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Кавказкая кухня"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.bottom: parent.bottom
                    anchors.top: image2.bottom
                    anchors.topMargin: label1Kitchen.anchors.topMargin
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: label1Kitchen.font.pixelSize
                }
            }

            Button{
                id: buttonKitchen3Desert
                y: buttonKitchen1Asian.y
                height: buttonKitchen1Asian.height
                width: buttonKitchen1Asian.width
                anchors.left: buttonKitchen2Caucasine.right
                anchors.leftMargin: buttonKitchen1Asian.anchors.leftMargin

                Image {
                    id: image3
                    width: parent.width
                    height: width
                    fillMode: Image.PreserveAspectFit
                    source: "Images/SearchPage/dessert.png"
                }

                Label{
                    id: label3Kitchen
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Десерт"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.bottom: parent.bottom
                    anchors.top: image3.bottom
                    anchors.topMargin: label1Kitchen.anchors.topMargin
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: label1Kitchen.font.pixelSize
                }
            }

            Button{
                id: buttonKitchen4European
                height: buttonKitchen1Asian.height
                width: buttonKitchen1Asian.width
                anchors.top: buttonKitchen2Caucasine.bottom
                anchors.topMargin: buttonKitchen1Asian.anchors.leftMargin
                anchors.left: buttonKitchen1Asian.left

                Image {
                    id: image4
                    width: parent.width
                    height: width
                    fillMode: Image.PreserveAspectFit
                    source: "Images/SearchPage/europeanFood.png"
                }

                Label{
                    id: label4Kitchen
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Европейская кухня"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.bottom: parent.bottom
                    anchors.top: image4.bottom
                    anchors.topMargin: label1Kitchen.anchors.topMargin
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: label1Kitchen.font.pixelSize
                }
            }

            Button{
                id: buttonKitchen5Fish
                y: buttonKitchen4European.y
                height: buttonKitchen1Asian.height
                width: buttonKitchen1Asian.width
                anchors.left: buttonKitchen4European.right
                anchors.leftMargin: buttonKitchen1Asian.anchors.leftMargin

                Image {
                    id: image5
                    width: parent.width
                    height: width
                    fillMode: Image.PreserveAspectFit
                    source: "Images/SearchPage/fishFood.png"
                }

                Label{
                    id: label5Kitchen
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Рыбные блюда"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.bottom: parent.bottom
                    anchors.top: image5.bottom
                    anchors.topMargin: label1Kitchen.anchors.topMargin
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: label1Kitchen.font.pixelSize
                }
            }

            Button{
                id: buttonKitchen6Meat
                y: buttonKitchen4European.y
                height: buttonKitchen1Asian.height
                width: buttonKitchen1Asian.width
                anchors.left: buttonKitchen5Fish.right
                anchors.leftMargin: buttonKitchen1Asian.anchors.leftMargin

                Image {
                    id: image6
                    width: parent.width
                    height: width
                    fillMode: Image.PreserveAspectFit
                    source: "Images/SearchPage/meatDish.png"
                }

                Label{
                    id: label6Kitchen
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Мясные блюда"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.bottom: parent.bottom
                    anchors.top: image6.bottom
                    anchors.topMargin: label1Kitchen.anchors.topMargin
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: label1Kitchen.font.pixelSize
                }
            }

            Button{
                id: buttonKitchen7Salads
                height: buttonKitchen1Asian.height
                width: buttonKitchen1Asian.width
                anchors.top: buttonKitchen4European.bottom
                anchors.topMargin: buttonKitchen1Asian.anchors.leftMargin
                anchors.left: buttonKitchen1Asian.left

                Image {
                    id: image7
                    width: parent.width
                    height: width
                    fillMode: Image.PreserveAspectFit
                    source: "Images/SearchPage/salads.png"
                }

                Label{
                    id: label7Kitchen
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Салаты"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.bottom: parent.bottom
                    anchors.top: image7.bottom
                    anchors.topMargin: label1Kitchen.anchors.topMargin
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: label1Kitchen.font.pixelSize
                }
            }

            Button{
                id: buttonKitchen8Soups
                y: buttonKitchen7Salads.y
                height: buttonKitchen1Asian.height
                width: buttonKitchen1Asian.width
                anchors.left: buttonKitchen7Salads.right
                anchors.leftMargin: buttonKitchen1Asian.anchors.leftMargin

                Image {
                    id: image8
                    width: parent.width
                    height: width
                    fillMode: Image.PreserveAspectFit
                    source: "Images/SearchPage/soups.png"
                }

                Label{
                    id: label8Kitchen
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Супы"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.bottom: parent.bottom
                    anchors.top: image8.bottom
                    anchors.topMargin: label1Kitchen.anchors.topMargin
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: label1Kitchen.font.pixelSize
                }
            }

            Button{
                id: buttonKitchen9Vegetariasm
                y: buttonKitchen7Salads.y
                height: buttonKitchen1Asian.height
                width: buttonKitchen1Asian.width
                anchors.left: buttonKitchen8Soups.right
                anchors.leftMargin: buttonKitchen1Asian.anchors.leftMargin

                Image {
                    id: image9
                    width: parent.width
                    height: width
                    fillMode: Image.PreserveAspectFit
                    source: "Images/SearchPage/vegetarianism.png"
                }

                Label{
                    id: label9Kitchen
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Вегетариан..."
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.bottom: parent.bottom
                    anchors.top: image9.bottom
                    anchors.topMargin: label1Kitchen.anchors.topMargin
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: label1Kitchen.font.pixelSize
                }
            }
        }

        Label{
            id: labelAllRecepts
            color: "#0d0db7"
            text: "ВСЕ РЕЦЕПТЫ"
            font.pixelSize: parent.width * 0.05
            anchors.left: parent.left
            anchors.leftMargin: buttonKitchen1Asian.anchors.leftMargin
            anchors.top: rectangleWithButtonKitchen.bottom
            anchors.topMargin: height *1.5

            MouseArea{
                id: mouseAreaAllRecepts
                anchors.fill: parent
            }
        }

    }
}
