import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 720
    height: 640
    title: qsTr("@author jgaforsberg")
    id: mainWindow
    property alias  mainWindow: mainWindow

    SwipeView {
        id: mainSwipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        Page1Form {
        }
        Page2Form {
            yellowButton.onClicked: {
                rectangleColor.color = "lightyellow"
            }
            blueButton.onClicked: {
                rectangleColor.color = "lightblue"
            }
            redButton.onClicked: {
                rectangleColor.color = "#ff7f7f"
            }
            greenButton.onClicked: {
                rectangleColor.color = "lightgreen"
            }
        }
        Page3Form {
            /*
             * För operationsknapparna läggs några villkor till
             * för att förhindra flera operationstecken på rad
             */
            buttonAdd.onClicked: {
               if(calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "+"
                       || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "-"
                       || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "/"
                       || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "*"
                       || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "."
                       || calculatorTextField.text.length == 0) {
                }else {
                    calculatorTextField.text += "+"
                }
            }
            /*
             * Undantag - då denna även indikerar negativa tal
            */
            buttonSub.onClicked: {
                if(calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "-"
                        || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == ".") {
                }else {
                    calculatorTextField.text += "-"
                }
            }
            buttonDiv.onClicked: {
                if(calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "+"
                        || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "-"
                        || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "/"
                        || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "*"
                        || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "."
                        || calculatorTextField.text.length == 0) {
                }else {
                    calculatorTextField.text += "/"
                }
            }
            buttonMul.onClicked: {
                if(calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "+"
                        || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "-"
                        || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "/"
                        || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "*"
                        || calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "."
                        || calculatorTextField.text.length == 0) {
                }else {
                    calculatorTextField.text += "*"
                }
            }
            /*
             * Delete rensar både textfält och resultatsfält
             */
            buttonDel.onClicked: {
                calculatorTextField.clear()
                if(resultLabel.text) {
                    resultLabel.text = ""
                }
            }
            /*
             * Villkor för att förhindra flera decimale i rad
             */
            buttonDec.onClicked: {
                if(calculatorTextField.text.charAt(calculatorTextField.text.length - 1) == "."){
                }else {
                    calculatorTextField.text += "."
                }
            }
            /*
             * Om textfält har input -> eval()
             * Noterar bristerna i eval() enligt dokumentationen
             * men väljer ändå att använda detta i denna lill app
             */
            buttonEq.onClicked: {
                if(calculatorTextField.text) {
                resultLabel.text = eval(calculatorTextField.text)
                }
                calculatorTextField.text = ""
            }
            button0.onClicked: {
                calculatorTextField.text += "0"
            }
            button1.onClicked: {
                calculatorTextField.text += "1"
            }
            button2.onClicked: {
                calculatorTextField.text += "2"
            }
            button3.onClicked: {
                calculatorTextField.text += "3"
            }
            button4.onClicked: {
                calculatorTextField.text += "4"
            }
            button5.onClicked: {
                calculatorTextField.text += "5"
            }
            button6.onClicked: {
                calculatorTextField.text += "6"
            }
            button7.onClicked: {
                calculatorTextField.text += "7"
            }
            button8.onClicked: {
                calculatorTextField.text += "8"
            }
            button9.onClicked: {
                calculatorTextField.text += "9"
            }
        }
        Page4Form {

        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: mainSwipeView.currentIndex

        TabButton {
            text: qsTr("Swipe")
        }
        TabButton {
            text: qsTr("Färgväljare")
        }
        TabButton {
            text: qsTr("Kalkylator")
        }
        TabButton {
            text: qsTr("Server/Klient")
        }
    }
}
