import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.1
import QtQuick.Controls

Window {
    width: 400
    height: 300
    visible: true
    title: qsTr("Out Super Form")
    Item{
        anchors.fill: parent
        ColumnLayout{
            spacing: 20
            anchors.centerIn: parent
            TextField {
                id: usernameField
                placeholderText: "Username"
                font.pixelSize: 16
            }

            TextField {
                id: passwordField
                placeholderText: "Password"
                font.pixelSize: 16
                echoMode: TextInput.Password
            }
            RowLayout{
                Button {
                    text: "Log In"
                }
                Button {
                    text: "Clear"
                    onClicked: {
                            passwordField.text = ""
                            usernameField.text = ""
                        }


                }
            }


        }
    }

}
