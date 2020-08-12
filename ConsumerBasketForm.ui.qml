import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0

Item {
    height: 640
    width: 420

    Rectangle{
        id: topRectangle
        color: "#e0dfdf"
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        height: parent.width * 0.1
        z: 1


        Label {
            id: label
            text: qsTr("Покупки")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: parent.width * 0.05
            font.bold: true
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.05
        }
    }



}
