import QtQuick
import Felgo

Item {
    id: flower
    Rectangle {
        width: 100
        height: 30
        color: "yellow"
        anchors.centerIn: parent
    }

    Rectangle {
        width: 30
        height: 100
        color: "yellow"
        rotation: 45
        anchors.centerIn: parent
    }

    Rectangle {
        width: 100
        height: 30
        color: "yellow"
        rotation: 90
        anchors.centerIn: parent
    }

    Rectangle {
        width: 30
        height: 100
        color: "yellow"
        rotation: 135
        anchors.centerIn: parent

    }

    Rectangle {
        width: 100
        height: 30
        color: "yellow"
        rotation: 180
         anchors.centerIn: parent
    }
}
