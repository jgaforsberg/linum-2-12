import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: mainWindow.width
    height: 500

    property alias yellowButton: yellowButton
    property alias blueButton: blueButton
    property alias redButton: redButton
    property alias greenButton: greenButton
    property alias rectangleColor: rectangleColor

    header: Label {
        height: 50
        text: qsTr("Färgväljare")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        x: 0
        y: 400
        width: 720
        height: 50
        text: qsTr("Välj en färg")
        anchors.verticalCenterOffset: 200
        anchors.horizontalCenterOffset: 0
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.centerIn: parent
    }

    GridView {
        id: gridView
        x: 0
        y: 0
        width: mainWindow.width
        height: 400
        cellWidth: 70

        RadioButton {
            id: yellowButton
            x: 105
            y: 336
            text: qsTr("Gul")
        }

        RadioButton {
            id: blueButton
            x: 251
            y: 336
            text: qsTr("Blå")
        }

        RadioButton {
            id: redButton
            x: 387
            y: 336
            text: qsTr("Röd")
        }

        RadioButton {
            id: greenButton
            x: 529
            y: 336
            text: qsTr("Grön")
        }

        Rectangle {
            id: rectangleColor
            x: 0
            y: 0
            width: 720
            height: 325
            color: "#ffffff"
        }
    }
}
