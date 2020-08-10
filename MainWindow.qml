import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0

MainWindowForm {

    tabButton5Account.onClicked: {
        loader.source = "Account.qml"
    }

    tabButton4ConsumerBasket.onClicked: {
        loader.source = "ConsumerBasket.qml"
    }

    tabButton3Search.onClicked: {
        loader.source = "Search.qml"
    }

    tabButton2Instructions.onClicked: {
        loader.source = "Instructions.qml"
    }

    tabButton1Home.onClicked: {
        loader.source = "Home.qml"
    }

    Component.onCompleted: {
        loader.source = "Home.qml"
    }

}
