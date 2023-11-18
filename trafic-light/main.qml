import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 300
    height: 480
    visible: true
    title: qsTr("Traffic Light")

    Rectangle {
        id: rect
        color: "gray"
        width: parent.width / 2 + 40
        height: parent.height / 2 + 100
        anchors.centerIn: parent

        states: [
            State {
                name: "stop"
                PropertyChanges {
                    target: rect_red
                    color: "red"
                }
                PropertyChanges {
                    target: rect_yellow
                    color: "black"
                }
                PropertyChanges {
                    target: rect_green
                    color: "black"
                }
            },
            State {
                name: "caution"
                PropertyChanges {
                    target: rect_red
                    color: "black"
                }
                PropertyChanges {
                    target: rect_yellow
                    color: "yellow"
                }
                PropertyChanges {
                    target: rect_green
                    color: "black"
                }
            },
            State {
                name: "go"
                PropertyChanges {
                    target: rect_red
                    color: "black"
                }
                PropertyChanges {
                    target: rect_yellow
                    color: "black"
                }
                PropertyChanges {
                    target: rect_green
                    color: "green"
                }
            }
        ]

        transitions: [
            Transition {
                from: "stop"
                to: "caution"
                PropertyAnimation {
                    id: anim;
                    target: rect_red;
                    properties: "color";
                    to: "black";
                    duration: 1000;
                }
            },
            Transition {
                from: "caution"
                to: "go"
                PropertyAnimation {
                    id: anim_a;
                    target: rect_yellow;
                    properties: "color";
                    to: "black";
                    duration: 1000;
                }
            },
            Transition {
                from: "go"
                to: "stop"
                PropertyAnimation {
                    id: anim_b;
                    target: rect_red;
                    properties: "color";
                    to: "black";
                    duration: 1000;
                }
            }
        ]

        state: "stop"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (parent.state === "stop") {
                    parent.state = "caution";
                } else if (parent.state === "caution") {
                    parent.state = "go";
                } else {
                    parent.state = "stop";
                }
            }
        }

        Rectangle {
            id: rect_yellow
            width: parent.width / 2
            height: parent.width / 2
            anchors.centerIn: parent
            color: "yellow"
        }

        Rectangle {
            id: rect_red
            width: parent.width / 2
            height: parent.width / 2
            anchors.bottom: rect_yellow.top
            anchors.horizontalCenter: rect_yellow.horizontalCenter
            color: "red"
        }

        Rectangle {
            id: rect_green
            width: parent.width / 2
            height: parent.width / 2
            anchors.top: rect_yellow.bottom
            anchors.horizontalCenter: rect_yellow.horizontalCenter
            color: "green"
        }
    }
}
