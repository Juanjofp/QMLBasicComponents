import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
  implicitHeight: childrenRect.height
  implicitWidth: childrenRect.width

  Component.onCompleted: {
    console.log("SliderSample.qml loaded");

    console.log("SliderSample.qml height: " + height);
    console.log("SliderSample.qml width: " + width);
  }

  ColumnLayout {
    spacing: 16
    Slider {
      id: sliderId

      Layout.alignment: Qt.AlignHCenter

      from: 0
      to: 100
      value: 50

      onValueChanged: {
        console.log("Slider value: " + value);
      }
    }

    ProgressBar {
      id: progressBarId

      Layout.alignment: Qt.AlignHCenter

      from: 0
      to: 100
      value: sliderId.value
    }
  }
}