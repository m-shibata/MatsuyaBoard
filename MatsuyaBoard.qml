import QtQuick 2.0
import QtMultimedia 5.0

Rectangle {
    id: root
    width: 480
    height: 640

    Rectangle {
        width: 299
        height: 299
        anchors.centerIn: parent

        Image {
            source: "assets/oshie.jpg"
        }

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
