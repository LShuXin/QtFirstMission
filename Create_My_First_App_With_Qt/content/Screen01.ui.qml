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

    color: Constants.backgroundColor

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
    }

    Rectangle {
        id: addToDoDialog
        x: 10
        y: 556
        width: 380
        height: 200
        color: "#d6d7d7"
        radius: 8

        Text {
            id: toDoTextInput
            height: 60
            text: qsTr("Text")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            font.pixelSize: 12
            anchors.rightMargin: 25
            anchors.leftMargin: 25
            anchors.topMargin: 25
        }

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
            }

            Button {
                id: addButton
                text: qsTr("Add")
                Layout.fillWidth: true
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/
