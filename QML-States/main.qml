import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.15

Window {
    id: window
    width: 700
    height: 400
    property int currentIndex: 0
    Rectangle {
        color: "white";
        anchors.fill: parent
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 150

        IBar {
            Button{
                id: back
                text: '<-'
                visible: false
                anchors.right: parent
                onClicked:{
                    if (currentIndex == 1){
                        button2.clicked()
                        button1.clicked()
                    } else if (currentIndex == 2){
                        button3.clicked()
                        button2.clicked()
                    }
                }
                opacity: back.visible ? 1 : 0
                Behavior on opacity {
                    NumberAnimation { duration: 500 }
                }
            }
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
                            back.visible = false
                            button3.enabled=!button3.enabled
                            button2.enabled=!button2.enabled
                            currentIndex=0
                        }
                        opacity: button1.enabled ? 1 : 0.5
                        Behavior on opacity {
                            NumberAnimation { duration: 500 }
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
                            back.visible = true
                            centerText.comText="Center II"
                            button1.enabled=!button1.enabled
                            button3.enabled=!button3.enabled
                            currentIndex=1
                        }
                        opacity: button2.enabled ? 1 : 0.5
                        Behavior on opacity {
                            NumberAnimation { duration: 500 }
                        }
                    }
                }
                IBox {
                    Button{
                        id: button3
                        anchors.fill:parent
                        text: "3"
                        onClicked: {
                            back.visible = true
                            ict1.comText="Header III"
                            centerText.comText="Center III"
                            button1.enabled=!button1.enabled
                            button2.enabled=!button2.enabled
                            currentIndex=2
                        }
                        opacity: button3.enabled ? 1 : 0.5
                        Behavior on opacity {
                            NumberAnimation { duration: 500 }
                        }
                    }
                }
            }
        }
    }
}
