import QtQuick 2.13
import QtQuick.Window 2.13
import QtQml 2.13
import QtQuick.Controls 2.13
import AppCore 1.0

Item {
    id: element
    width: 480
    height: 640

    Label {
        id: label
        x: 60
        y: 44
        text: qsTr("Идеи завтраков и закусок")
        font.pixelSize: 15
        font.bold: true
    }

    ToolBar {
        id: toolBar
        y: 576
        height: 64
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0



        ToolButton {
            id: toolButton1
            x: 8
            y: 12
            text: qsTr("1")
        }

        ToolButton {
            id: toolButton2
            x: 89
            y: 12
            text: qsTr("2")
        }

        ToolButton {
            id: toolButton3
            x: 173
            y: 12
            text: qsTr("3")
        }

        ToolButton {
            id: toolButton4
            x: 279
            y: 12
            text: qsTr("4")
        }

        ToolButton {
            id: toolButton5
            x: 393
            y: 12
            text: qsTr("5")
        }
    }
}

/*##^##
Designer {
    D{i:2;anchors_width:360;anchors_x:44}
}
##^##*/
