import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0

Window {
    visible: true
    height: 640
    width: 420
    title: qsTr("Кухни мира")    

    /*Rectangle{
        anchors.fill: parent

        MainWindow{
            anchors.fill: parent
        }
    }*/

    Component.onCompleted: {
        AppCore.startAppCore()
    }


    Loader
    {
        id: loaderMain
        anchors.fill: parent
        source: "Loading.qml"
        //source: "CreateZakaz2.qml"
    }
}
