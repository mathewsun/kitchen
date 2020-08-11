import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0

Item {
    height: 640
    property alias buttonFilterRight: buttonFilterRight
    property alias buttonFilterLeft: buttonFilterLeft
    width: 420

    TextField {
        id: textFieldSearch
        placeholderText: qsTr("поиск")
        anchors.left: parent.left
        anchors.right: buttonSearch.left
        anchors.top: parent.top
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
            font.pixelSize: buttonFilterRight.width * 0.1
        }

    }
}
