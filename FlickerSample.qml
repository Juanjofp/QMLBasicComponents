import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Flickable {
    id: flickableId

    // total height for children (implicit height of children is the real height)
    contentHeight: contentLayoutId.implicitHeight

    ColumnLayout {
        id: contentLayoutId

        anchors.fill: parent
        Rectangle {
            Layout.fillWidth: true
            height: 200

            color: "red"
        }

        Rectangle {
            Layout.fillWidth: true
            height: 200

            color: "green"
        }

        Rectangle {
            Layout.fillWidth: true
            height: 200

            color: "blue"
        }

        Rectangle {
            Layout.fillWidth: true
            height: 200

            color: "orange"
        }

        Rectangle {
            Layout.fillWidth: true
            height: 200

            color: "dodgerblue"
        }

        Rectangle {
            Layout.fillWidth: true
            height: 200

            color: "greenyellow"
        }
    }

    ScrollBar.vertical: ScrollBar {
        parent: flickableId
    }
}
