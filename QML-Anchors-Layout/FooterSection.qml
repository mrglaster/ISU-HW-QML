import QtQuick
import Felgo

Item{
    anchors.fill: parent
    id: footerSection
    GuiBlock{
        id:first
        blockColor: "lightgrey"
        width: parent.width / 3
        height: parent.height / 9
        anchors{
            bottom:  parent.bottom
            left: parent.left
        }
        blockText: "1"

    }
    GuiBlock{
        id:second
        blockColor: "lightgrey"
        width: first.width
        height: first.height
        anchors {
            bottom: parent.bottom
            left: first.right
            right: third.left
            leftMargin: 4
            rightMargin: 4
        }
        blockText: "2"
    }
    GuiBlock{
        id:third
        blockColor: "lightgrey"
        width: first.width
        height: first.height
        anchors{
            bottom: parent.bottom
            right: parent.right
        }
        blockText: "3"
    }
}
