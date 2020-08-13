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
    property alias buttonSearch: buttonSearch
    width: 420
    property alias comboBoxDayTime: comboBoxDayTime
    property alias comboBoxCalories: comboBoxCalories
    property alias comboBoxAvtor: comboBoxAvtor
    property alias comboBoxTime: comboBoxTime
    property alias modelComboBoxTime: modelComboBoxTime
    property alias modelComboBoxAvtor: modelComboBoxAvtor
    property alias modelComboBoxCalories: modelComboBoxCalories
    property alias modelComboBoxDayTime: modelComboBoxDayTime
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

    Rectangle {
        id: rectangleFilters
        anchors.top: topRectangle.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: comboBoxCalories.y + comboBoxCalories.height
        z:1
        //color: "red"

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

        ComboBox {
            id: comboBoxTime
            width: parent.width * 0.4
            height: width * 0.2
            x: parent.width * 0.05
            anchors.top: textFieldSearch.bottom
            anchors.topMargin: height * 0.5
            font.pixelSize: width * 0.1
            model: ListModel {
                    id: modelComboBoxTime
            }
        }

        ComboBox {
            id: comboBoxAvtor
            width: comboBoxTime.width
            height: comboBoxTime.height
            x: parent.width * 0.55
            y: comboBoxTime.y
            font.pixelSize: comboBoxTime.font.pixelSize
            model: ListModel {
                    id: modelComboBoxAvtor
            }
        }

        ComboBox {
            id: comboBoxCalories
            width: comboBoxTime.width
            height: comboBoxTime.height
            x: comboBoxTime.x
            anchors.top: comboBoxTime.bottom
            anchors.topMargin: comboBoxTime.anchors.topMargin
            font.pixelSize: comboBoxTime.font.pixelSize
            model: ListModel {
                    id: modelComboBoxCalories
            }
        }

        ComboBox {
            id: comboBoxDayTime
            width: comboBoxTime.width
            height: comboBoxTime.height
            x: comboBoxAvtor.x
            y: comboBoxCalories.y
            font.pixelSize: comboBoxTime.font.pixelSize
            model: ListModel {
                id: modelComboBoxDayTime
            }
        }


    }

    GridView {
        id: gridView
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: rectangleFilters.bottom
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
                labelName.text: model.instructionName
                labelTimeLikes.text: "123"
                }

        }
    }


   /* InstructionsElement {

    }*/

}
