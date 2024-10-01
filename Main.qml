import QtQuick
import QtQuick.VirtualKeyboard
import QtQuick.Controls

Window {
  id: windowId

  width: 800
  height: 600

  visible: true

  title: qsTr("Basic Components")

  SwipeView {
    id: swipeSectionsId

    anchors.fill: parent

    currentIndex: pageIndicatorId.currentIndex

    onCurrentIndexChanged: {
      console.log("Current index: " + currentIndex);

      windowId.title = itemAt(currentIndex).objectName;
    }

    ProgressSamples {
      objectName: "Progress Samples"
    }

    FlickerSample {
      objectName: "Flicker Sample"
    }

    TabBarSample {
      objectName: "Tab Bar Sample"
    }

    Rectangle {
      objectName: "Empty Rectangle"
      color: "blue"
    }
  }

  PageIndicator {
    id: pageIndicatorId

    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter

    count: swipeSectionsId.count
    currentIndex: swipeSectionsId.currentIndex

    interactive: true
  }
}
