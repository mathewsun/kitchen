import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0
//import "../."
import "./widgets/."

InstructionsForm {

    Component.onCompleted: {
        for(var i = 0; i < 10; i++){
            modelGridWiew.append({name: "asdfasf" ,
                                     imageUrl: "dsagads"})
        }
    }

}
