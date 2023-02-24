import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2

Page {
    width: 720
    height: 500

    header: Label {
        height: 50
        text: qsTr("Server/Klient")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }
}
