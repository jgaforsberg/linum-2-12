import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2

Page {
    id: calculatorPage
    width: 720
    height: 500
    property alias button0: button0
    property alias button1: button1
    property alias button2: button2
    property alias button3: button3
    property alias button4: button4
    property alias button5: button5
    property alias button6: button6
    property alias button7: button7
    property alias button8: button8
    property alias button9: button9
    property alias buttonAdd: buttonAdd
    property alias buttonSub: buttonSub
    property alias buttonMul: buttonMul
    property alias buttonDiv: buttonDiv
    property alias buttonDec: buttonDec
    property alias buttonDel: buttonDel
    property alias buttonEq: buttonEq
    property alias calculatorTextField: calculatorTextField
    property alias resultLabel: resultLabel

    header: Label {
        height: 50
        text: qsTr("Kalkylator")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }
    Grid {
        id: calculatorGrid
        x: 0
        y: 140
        width: calculatorPage.width
        height: 300
        columns: 2
        columnSpacing: 10
        rows: 2
        rowSpacing: 5
        Grid {
            id: numberGrid
            x: 0
            width: calculatorGrid.width / 2
            height: 295
            rows: 3
            rowSpacing: 5
            columns: 3
            columnSpacing: 5
            Button {
                id: button1
                text: qsTr("1")
                width: numberGrid.width / 3.05
                height: numberGrid.height / 3.1
            }
            Button {
                id: button2
                text: qsTr("2")
                width: numberGrid.width / 3.05
                height: numberGrid.height / 3.1
            }
            Button {
                id: button3
                text: qsTr("3")
                width: numberGrid.width / 3.05
                height: numberGrid.height / 3.1
            }
            Button {
                id: button4
                text: qsTr("4")
                width: numberGrid.width / 3.05
                height: numberGrid.height / 3.1
            }
            Button {
                id: button5
                text: qsTr("5")
                width: numberGrid.width / 3.05
                height: numberGrid.height / 3.1
            }
            Button {
                id: button6
                text: qsTr("6")
                width: numberGrid.width / 3.05
                height: numberGrid.height / 3.1
            }
            Button {
                id: button7
                text: qsTr("7")
                width: numberGrid.width / 3.05
                height: numberGrid.height / 3.1
            }
            Button {
                id: button8
                text: qsTr("8")
                width: numberGrid.width / 3.05
                height: numberGrid.height / 3.1
            }
            Button {
                id: button9
                text: qsTr("9")
                width: numberGrid.width / 3.05
                height: numberGrid.height / 3.1
            }
        }
        Grid {
            id: operationsGrid
            x: 370
            width: 350
            height: 295
            columns: 2
            columnSpacing: 5
            rows: 3
            rowSpacing: 5

            Button {
                id: buttonDel
                text: qsTr("Del")
                width: operationsGrid.width / 2.05
                height: operationsGrid.height / 3.1
            }
            Button {
                id: buttonDec
                text: qsTr(".")
                width: operationsGrid.width / 2.05
                height: operationsGrid.height / 3.1
            }
            Button {
                id: buttonMul
                text: qsTr("*")
                width: operationsGrid.width / 2.05
                height: operationsGrid.height / 3.1
            }
            Button {
                id: buttonDiv
                text: qsTr("/")
                width: operationsGrid.width / 2.05
                height: operationsGrid.height / 3.1
            }
            Button {
                id: buttonSub
                text: qsTr("-")
                width: operationsGrid.width / 2.05
                height: operationsGrid.height / 3.1
            }
            Button {
                id: buttonAdd
                text: qsTr("+")
                width: operationsGrid.width / 2.05
                height: operationsGrid.height / 3.1
            }
            /*  Button {
                id: buttonDec
                text: qsTr(".")
                width: operationsGrid.width
                height: operationsGrid.height / 4
            }*/
        }
        Button {
            id: button0
            x: 0
            y: 270
            text: qsTr("0")
            width: numberGrid.width * 1.01
            height: calculatorGrid.height / 4
        }
        Button {
            id: buttonEq
            x: 360
            y: 270
            text: qsTr("=")
            width: operationsGrid.width / 1.01
            height: operationsGrid.height / 4
        }
    }
    TextField {
        id: calculatorTextField
        width: calculatorPage.width
        height: 70
        clip: false
        enabled: false
        padding: 0
        visible: true
        font.family: "Arial"
        font.pointSize: 36
        horizontalAlignment: Text.AlignRight
        y: 75
    }
    Label {
        id: resultLabel
        width: calculatorPage.width
        height: 70
        horizontalAlignment: Text.AlignHCenter
        visible: true
        font.family: "Arial"
        font.pointSize: 36
    }
}
