import QtQuick
import Felgo
import QtQuick.Layouts


Item {
    Layout.fillHeight: true
    Layout.fillWidth: true
    property alias boxText: text.comText
    Rectangle{
        ICenterText{ id: text }
        anchors.fill: parent
        color: "light gray"
        border.width: 1
        border.color: "silver"
        radius: 2
    }
}
