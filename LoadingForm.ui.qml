import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0

Item {
    height: 640
    width: 420

    Rectangle{
        id: rectangle
        anchors.fill: parent
        color: "red"

        Image {
            id: image
            x: 181
            y: 256
            height: width
            width: parent.width * 0.7
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.Stretch
            source: "Images/icon2.png"
        }
    }
}
