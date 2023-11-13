import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Anchors Based Layout")
    HeaderSection{
        z:1
    }
    ContentSection{}
    FooterSection{}

}
