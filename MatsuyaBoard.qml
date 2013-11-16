import QtQuick 2.0
import QtMultimedia 5.0

Flickable {
    id: root
    width: 480
    height: 640

    contentWidth: Math.max(2 * root.width - maskman.width, maskman.width)
    contentHeight: Math.max(2 * root.height - maskman.height, maskman.height)
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
