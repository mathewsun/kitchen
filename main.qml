import QtQuick 2.13
import QtQuick.Window 2.13
import QtQml 2.13
import QtQuick.Controls 2.13
import AppCore 1.0

Window {
    visible: true
    height: 640
    width: 480
    title: qsTr("Кухни мира")

    Rectangle{
        anchors.fill: parent

        MainWindow{
            anchors.fill: parent
        }
    }


    /*Loader
    {
        id: loader
        anchors.fill: parent
        source: "First.qml"
        //source: "CreateZakaz2.qml"
    }*/
}
