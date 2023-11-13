import QtQuick
import Felgo


Item {
    property alias blockColor: rect.color
    property alias blockText: bText.text
    property bool has_border: false
    Rectangle {
        id:rect
        border.width: has_border ? 2:0
        border.color: has_border ? "grey":"white"
        anchors.fill: parent
        Text{
            id: bText
            anchors.centerIn: parent
        }
    }
}
