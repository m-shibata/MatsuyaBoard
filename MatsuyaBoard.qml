import QtQuick 2.0
import QtMultimedia 5.0

Rectangle {
    id: root
    width: 480
    height: 640

    Flickable {
        anchors.fill: parent
        contentWidth: 2 * root.width - maskman.width
        contentHeight: 2 * root.height - maskman.height
        contentX: (root.width - maskman.width) / 2
        contentY: (root.height - maskman.height) / 2

        Image {
            id: maskman
            anchors.centerIn: parent
            source: "assets/oshie.jpg"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var num
                    num = new String(Math.floor(Math.random()*4)+1)
                    console.log(num)
                    console.log(maskman.width)
                    community.source = "assets/"+num+".wav"
                    community.play()
                }
            }
        }

        Audio {
            id: community
            source: "assets/1.wav"
        }
    }
}
