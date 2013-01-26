import QtQuick 2.0
import Ubuntu.Components 0.1
import QtMultimedia 5.0

Rectangle {
    id: root
    width: units.gu(60)
    height: units.gu(80)
    Button {
    width: 299
    height: 299
        anchors.centerIn: parent
    iconSource: "assets/oshie.jpg"
        onClicked: {
        var num
        num = new String(Math.floor(Math.random()*4)+1)
    console.log(num)
        community.source = "assets/"+num+".wav"
        community.play()
        }
    }
    Audio {
        id: community
        source: "assets/1.wav"
    }

}
