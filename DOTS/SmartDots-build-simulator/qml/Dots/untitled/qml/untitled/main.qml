import QtQuick 1.0

Rectangle {
    width: 360
    height: 360
    Text {
        id: p1
        text: "Hello World"
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
         //   if(mode == cpu) {
         //       p1.text = ""+count1
         //   }

            Qt.quit();
        }
    }
}
