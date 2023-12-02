import QtQuick
import QtQuick.Window
import QtQuick 2.0
import QtQuick.Layouts

Window {
    id: window
    width: 800
    height: 800

    Rectangle {
        color: "white";
        anchors.fill: parent
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 150

        IBar {
            ICenterText {
                comText: "header"
                Layout.alignment: Qt.AlignHCenter  // Выравнивание по горизонтали в центре
            }
        }

        Item {
            anchors.fill: parent
            width: window.width - 30
            height: window.height + 50

            Rectangle {
                Layout.alignment: Qt.AlignCenter
                anchors.centerIn: parent
                border.color: "silver"
                border.width: 1

                ICenterText {
                    comText: "center"
                }
            }
        }

        IBar {
            RowLayout {
                anchors.fill: parent
                spacing: 8
                IBox { boxText: "1" }
                IBox { boxText: "2" }
                IBox { boxText: "3" }
            }
        }
    }
}
