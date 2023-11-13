import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: "The Flower"

    Item {
        anchors.fill: parent

        Flower {
            id: flower
            anchors.centerIn: parent
            width: 100
            height: 100
            z: 2
            Stem {
                anchors {
                    top: flower.bottom
                    horizontalCenter: flower.horizontalCenter
                }
                width: 30
                z: 1
            }
            Stamen{
                width: 30
                height: 30
                anchors.centerIn: flower
            }

        }
    }
}
