import QtQuick
import Felgo

Item {
    anchors.fill: parent
    id: contentSection
    GuiBlock{
        id:content
        has_border: true
        blockColor: "white"
        width: parent.width
        height: parent.height / 9 * 7
        anchors {
            top: headerSection.bottom
            bottom: second.top
            left: parent.left
            right: parent.right
            margins: 30

        }
        blockText: "Content"
    }

}
