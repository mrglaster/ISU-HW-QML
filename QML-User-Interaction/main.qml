import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    id: window
    width: 700
    height: 400

    Rectangle {
        color: "white";
        anchors.fill: parent
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 150

        IBar {
            ICenterText {
                id: ict1
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
                    id: centerText
                    comText: "center"
                }
            }
        }

        IBar {
            RowLayout {
                anchors.fill: parent
                spacing: 8
                IBox {
                    Button{
                        id: button1
                        anchors.fill:parent
                        text: "1"
                        onClicked: {
                           ict1.comText="Header I"
                           centerText.comText="Center I"
                            button3.enabled=!button3.enabled
                            button2.enabled=!button2.enabled
                        }
                    }
                }
                IBox {
                    Button{
                        id: button2
                        anchors.fill:parent
                        text: "2"
                        onClicked: {
                             ict1.comText="Header II"
                            centerText.comText="Center II"
                            button1.enabled=!button1.enabled
                            button3.enabled=!button3.enabled
                        }
                    }
                }
                IBox {
                    Button{
                        id: button3
                        anchors.fill:parent
                        text: "3"
                        onClicked: {
                             ict1.comText="Header III"
                            centerText.comText="Center III"
                            button1.enabled=!button1.enabled
                            button2.enabled=!button2.enabled
                        }
                    }

                }
            }
        }
    }
}
