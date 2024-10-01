import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {

  Page {
    anchors.fill: parent

    header: TabBar {
      id: tabBarId

      currentIndex: swipeViewId.currentIndex

      TabButton {
        text: "Tab 1"
      }

      TabButton {
        text: "Tab 2"
      }

      TabButton {
        text: "Tab 3"
      }
    }

    SwipeView {
      id: swipeViewId

      anchors.fill: parent

      currentIndex: tabBarId.currentIndex

      Repeater {
        model: 3

        delegate: Rectangle {
          color: "lightsteelblue"

          Text {
            anchors.centerIn: parent
            text: "Page " + (index + 1)
          }
        }
      }
    }

    footer: Item {
      width: parent.width
      height: 50

      RowLayout {
        anchors.fill: parent

        Item {
          Layout.fillWidth: true
        }

        Button {
          text: "Previous"
          onClicked: swipeViewId.decrementCurrentIndex()
        }

        Button {
          text: "Next"
          onClicked: swipeViewId.incrementCurrentIndex()
        }
      }
    }
  }
}