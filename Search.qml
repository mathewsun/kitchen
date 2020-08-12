import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0
import "./secondPages/."

SearchForm {
    buttonKitchen1Asian.onClicked: {
    }
    buttonKitchen2Caucasine.onClicked: {
    }
    buttonKitchen3Desert.onClicked: {
    }
    buttonKitchen4European.onClicked: {
    }
    buttonKitchen5Fish.onClicked: {
    }
    buttonKitchen6Meat.onClicked: {
    }
    buttonKitchen7Salads.onClicked: {
    }
    buttonKitchen8Soups.onClicked: {
    }
    buttonKitchen9Vegetariasm.onClicked: {
    }
    mouseAreaAllRecepts.onClicked: {
        console.log("1111")
        loader.source = "./secondPages/AllRecepts.qml"
    }

    Component.onCompleted: {

    }
}
