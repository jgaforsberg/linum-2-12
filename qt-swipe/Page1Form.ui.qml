import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2

Page {
    width: 720
    height: 500

    property alias itemImage1: itemImage1
    property alias itemImage2: itemImage2
    property alias image1: image1
    property alias image2: image2
    header: Label {
        height: 50
        text: qsTr("Första sidan")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        x: 0
        y: 400
        width: mainWindow.width
        height: 50
        text: qsTr("Svajpa för att kolla in bilderna")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenterOffset: 200
        anchors.horizontalCenterOffset: 0
        anchors.centerIn: parent
    }

    SwipeView {
        id: swipeView
        x: 0
        y: 0
        width: mainWindow.width
        height: 400
        currentIndex: 0

        Item {
            id: itemImage1
            Image {
                id: image1
                x: 0
                y: 0
                anchors.fill: parent
                source: "images/tux.png"
            }
        }
        Item {
            id: itemImage2
            Image {
                id: image2
                x: 0
                y: 0
                anchors.fill: parent
                source: "images/github.png"
            }
        }
    }
}
