import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.15
import QtQuick.Controls 2.15
import AppCore 1.0
//import "../."
import "./widgets/."

InstructionsForm {
    buttonSearch.onClicked: {
    }
    comboBoxDayTime.onCurrentTextChanged: {
    }
    comboBoxCalories.onCurrentTextChanged: {
    }
    comboBoxAvtor.onCurrentTextChanged: {
    }
    comboBoxTime.onCurrentTextChanged: {
    }

    Component.onCompleted: {
        modelComboBoxTime.append({text: "5-10 min"})
        modelComboBoxTime.append({text: "10-15 min"})
        modelComboBoxTime.append({text: "15-20 min"})
        modelComboBoxTime.append({text: "20-30 min"})

        modelComboBoxCalories.append({text: "0-100 kcal"})
        modelComboBoxCalories.append({text: "100-300 kcal"})
        modelComboBoxCalories.append({text: "300-500 kcal"})
        modelComboBoxCalories.append({text: "500-700 kcal"})

        modelComboBoxDayTime.append({text: "завтрак"})
        modelComboBoxDayTime.append({text: "обед"})
        modelComboBoxDayTime.append({text: "ужин"})

        for(var i = 0; i < 10; i++){
            modelComboBoxAvtor.append({text: "avtor " + i })
        }

        comboBoxTime.currentIndex = 0
        comboBoxAvtor.currentIndex = 0
        comboBoxCalories.currentIndex = 0
        comboBoxDayTime.currentIndex = 0

        for(var i = 0; i < 10; i++){
            modelGridWiew.append({name: "asdfasf" ,
                                     imageUrl: "dsagads"})
        }
    }

}
