import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0
import "../."

Item {
    height: 250
    width: 180

    Rectangle{
        id: mainRectangle
        anchors.fill: parent
        clip: true
        border.color: "grey"
        radius: parent.width * 0.1

        Image {
            id: imageFood
            height: width * 0.67
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            fillMode: Image.Stretch
            source: "qrc:/qtquickplugin/images/template_image.png"

            Image {
                id: imagePlay
                width: height
                height: parent.height * 0.3
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.Stretch
                source: "qrc:/Images/play.png"
                clip: true
            }

            MouseArea {
                id: mouseAreaPlay
                anchors.fill: parent
            }
        }

        Label {
            id: labelName
            text: qsTr("kasdjgbd sldkgjls d;lsgjsd;kgj dslgkjsdl sdklgjsdlkkgj")
            textFormat: Text.AutoText
            anchors.bottom: labelTimeLikes.top
            anchors.bottomMargin: parent.width * 0.1
            wrapMode: Text.WordWrap
            font.bold: true
            font.pixelSize: parent.width * 0.13
            anchors.top: imageFood.bottom
            anchors.topMargin: anchors.bottomMargin
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.05
            anchors.rightMargin: anchors.leftMargin
            clip: true
        }

        Label {
            id: labelTimeLikes
            height: parent.width * 0.1
            text: qsTr("1:02 min. - 234,4k pr...")
            wrapMode: Text.NoWrap
            font.pixelSize: parent.width * 0.085
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.leftMargin: labelName.anchors.leftMargin
            anchors.rightMargin:  labelName.anchors.leftMargin
            anchors.bottom: parent.bottom
            anchors.bottomMargin: height * 0.5
            clip: true
        }




    }
}

/*##^##
Designer {
    D{i:5;anchors_x:67;anchors_y:145}D{i:6;anchors_x:48}
}
##^##*/
