

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import Create_My_First_App_With_Qt
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#ffffff"
    property bool isDialogOpen: false

    Text {
        id: text1
        text: qsTr("To Do")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.topMargin: 10
    }

    Button {
        id: addToDoButton
        y: 347
        text: qsTr("Add Todo")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10

        Connections {
            target: addToDoButton
            onClicked: rectangle.isDialogOpen = !rectangle.isDialogOpen
        }
    }



    Rectangle {
        id: addToDoDialog
        x: 10
        y: 556
        width: 380
        height: 200
        visible: rectangle.isDialogOpen
        color: "#d6d7d7"
        radius: 8

        RowLayout {
            x: 20
            y: 134
            width: 340
            height: 48
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 12
            spacing: 10

            Button {
                id: cancelButton
                text: qsTr("Cancel")
                Layout.fillWidth: true

                Connections {
                    target: cancelButton
                    onClicked: rectangle.isDialogOpen = false
                }

                Connections {
                    target: cancelButton
                    onClicked: toDoTextInput.text = ""
                }
            }

            Button {
                id: addButton
                text: qsTr("Add")
                Layout.fillWidth: true

                Connections {
                    target: addButton
                    onClicked: rectangle.isDialogOpen = false
                }

                Connections {
                    target: addButton
                    onClicked: myListModel.append(myListModel.createListElement())
                }
            }
        }

        TextInput {
            id: toDoTextInput
            height: 60
            text: qsTr("Text Input")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            font.pixelSize: 12
            cursorVisible: true
            anchors.rightMargin: 25
            anchors.leftMargin: 25
            anchors.topMargin: 25
        }
    }

    Column {
        id: column
        anchors.fill: parent
        spacing: 20
        anchors.leftMargin: 10
        anchors.bottomMargin: 20
        anchors.topMargin: 50

        Repeater {
            id: repeater
            anchors.fill: parent
            model: ListModel {
              id: myListModel
              ListElement {
                name: "My ToDo"
              }
              function createListElement() {
                  return {
                    "name": toDoTextInput.text
                  }
              }
            }

            Rectangle {
                id: toDoItem
                x: 0
                y: -4
                height: 49
                color: "#d6d7d7"
                radius: 8
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.topMargin: 46

                CheckBox {
                    id: checkBox
                    text: name
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 1
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                }
            }
        }
    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:13}
}
##^##*/

