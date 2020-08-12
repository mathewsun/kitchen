import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0
import "../."

Item {
    width: 420
    height: 640

    Rectangle{
        id: topRectangle
        color: "#e0dfdf"
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        height: parent.width * 0.1
        z: 1

        Image {
            id: imageBack
            width: height
            height: label.height
            anchors.left: parent.left
            anchors.leftMargin: width * 0.6
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.Stretch
            source: "qrc:/Images/play.png"
        }

        Label {
            id: label
            text: qsTr("Все рецепты")
            anchors.leftMargin: imageBack.anchors.leftMargin
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: parent.width * 0.05
            font.bold: true
            anchors.left: imageBack.right
        }
    }
}
