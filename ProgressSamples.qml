import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {

  ColumnLayout {
    anchors.fill: parent

    spacing: 24

    Label {
      text: "Progress Samples"

      font {
        pixelSize: 30
        bold: true
      }

      Layout.fillWidth: true
      horizontalAlignment: Text.AlignHCenter
    }

    Button {
      id: startButtonId

      Layout.alignment: Qt.AlignHCenter

      text: progressBarIndeterminateId.indeterminate ? "Stop" : "Start"

      onClicked: {
        console.log("Start button clicked");

        progressBarIndeterminateId.indeterminate = !progressBarIndeterminateId.indeterminate;
      }
    }

    Dial {
      id: dialId

      Layout.alignment: Qt.AlignHCenter

      from: 0
      to: 100
      value: 50

      onValueChanged: {
        console.log("Dial value: " + value);
      }
    }

    ProgressBar {
      id: progressBarId

      Layout.alignment: Qt.AlignHCenter

      from: 0
      to: 100
      value: dialId.value

      onValueChanged: {
        console.log("Progress bar value: " + visualPosition);
      }
    }

    ProgressBar {
      id: progressBarIndeterminateId

      Layout.alignment: Qt.AlignHCenter
    }

    RangeSlider {
      id: rangeSliderId

      Layout.alignment: Qt.AlignHCenter

      from: 0
      to: 100

      first.value: 25
      second.value: 75

      first.onValueChanged: {
        console.log("First value: " + first.value);
      }

      second.onValueChanged: {
        console.log("Second value: " + second.value);
      }
    }

    SliderSample {
      Layout.alignment: Qt.AlignHCenter
    }

    RowLayout {
      Layout.alignment: Qt.AlignHCenter

      spacing: 24

      Switch {
        id: wifiSwitchId
        text: "Wifi"

        onToggled: {
          console.log("Wifi toggled: " + checked);
        }
      }

      Switch {
        id: mobileDataSwitchId
        text: "Mobile Data"

        onToggled: {
          console.log("Mobile data toggled: " + checked);
        }
      }
    }

    Item {
      Layout.fillHeight: true
    }
  }
}