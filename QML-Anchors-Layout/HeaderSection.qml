import QtQuick
import Felgo

Item {
    anchors.fill: parent
    id: headerSection
    GuiBlock{
        id:header
        blockColor: "lightgrey"
        width: parent.width
        height: parent.height / 9
        anchors.top: parent.top
        blockText: "Header"
    }
}
