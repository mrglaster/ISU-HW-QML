import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.1
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("PIN Auth Form")

    property int currentIndex: 0
    property string correctPassword: "123456"

    Text {
        id: passwordContainer
        text: ""
        visible: false;
    }

    function updatePassword(digit) {
            passwordContainer.text += digit;
            currentIndex = passwordContainer.text.length;

            if (passwordContainer.text.length >= 6) {
                if (passwordContainer.text !== correctPassword){
                    passwordTitle.text = "Bad password!"
                    passwordTitle.color = "red"
                    passwordContainer.text = ""
                    currentIndex = 0
                } else {
                    passwordTitle.text = "Welcome Username!"
                    passwordTitle.color = "green"
                    passwordContainer.text = ""
                    currentIndex = 0
                }
            }
    }

    function removeLastSymbol() {
        if (passwordContainer.text.length > 0) {
            passwordContainer.text = passwordContainer.text.substring(0, passwordContainer.text.length - 1);
        }
    }

    Item {
        anchors.fill: parent
        ColumnLayout {
            anchors.centerIn: parent
            Text {
                id: passwordTitle
                text: "Enter your password:"
                font.pixelSize: 16
                Layout.alignment: Qt.AlignCenter
            }

            Rectangle {
                id: passwordField1
                color: "white"
                border.width: 2
                border.color: "black"
                width: parent.width
                height: 50
                Layout.alignment: Qt.AlignCenter

                Row {
                    spacing: 6
                    anchors.centerIn: parent
                    Repeater {
                        model: 6
                        Label {
                            width: 20
                            height: 20
                            font.pixelSize: 36
                            text: "*"
                            Layout.alignment: Qt.AlignCenter
                            color: index <= passwordContainer.text.length - 1 ? "black" : "light gray"
                        }
                    }
                }
            }

            GridLayout {
                id: keypad
                rows: 4
                columns: 3
                width: parent.width
                Button {
                    text: "1"
                    onClicked: updatePassword("1")
                }

                Button {
                    text: "2"
                    onClicked: updatePassword("2")
                }

                Button {
                    text: "3"
                    onClicked: updatePassword("3")
                }

                Button {
                    text: "4"
                    onClicked: updatePassword("4")
                }

                Button {
                    text: "5"
                    onClicked: updatePassword("5")
                }

                Button {
                    text: "6"
                    onClicked: updatePassword("6")
                }

                Button {
                    text: "7"
                    onClicked: updatePassword("7")
                }

                Button {
                    text: "8"
                    onClicked: updatePassword("8")
                }

                Button {
                    text: "9"
                    onClicked: updatePassword("9")
                }

                Button {
                    text: "<="
                    onClicked: removeLastSymbol()

                }

                Button {
                    text: "0"
                    onClicked: updatePassword("0")
                }

                Button {
                    text: "clear"
                    onClicked: {
                        passwordContainer.text = ""
                        currentIndex = 0
                    }
                }

            }
        }
    }
}
