import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0
//import "../."
import "./widgets/."

Item {
    id: element
    height: 640
    width: 420

    property alias modelGridWiew: modelGridWiew

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
            text: qsTr("Инструкции")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: parent.width * 0.05
            font.bold: true
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.05
        }
    }

    GridView {
        id: gridView
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: topRectangle.bottom
        anchors.bottom: parent.bottom

        model: ListModel {
            id: modelGridWiew
        }

        cellWidth: parent.width * 0.5
        cellHeight: cellWidth * 1.5

        delegate: Item {
            width: gridView.cellWidth
            height: gridView.cellHeight
            //Column {
                //spacing: 50
            InstructionsElement {
                width: gridView.cellWidth * 0.9
                height: gridView.cellHeight * 0.9
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                }

        }
    }


   /* InstructionsElement {

    }*/

}
