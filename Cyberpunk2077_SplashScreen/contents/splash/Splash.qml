    import QtQuick 2.5
    import QtQuick.Window 2.2

   AnimatedImage {
        id: root
        source: "images/background.gif"
        property int stage

        Text 
        {
            id: date
            text:Qt.formatDateTime(new Date(),"dd  MM  yyyy")
            font.pointSize: 80
            color: "#cac636"
            opacity: 1.0
            font { family: "Cyberway    Riders"; weight: Font.light ;capitalization: Font.Capitalize;}
            anchors.horizontalCenter: parent.horizontalCenter
            y: (parent.height - height) / 6
        }

        Image {
        id: topRect
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height /1.635
        source: "images/rectangle.svg"

        Rectangle {
            radius: 3
            color: "#00272c"

            anchors {
                bottom: parent.bottom
                bottomMargin: 50
                horizontalCenter: parent.horizontalCenter
            }
            height: 10
            width: height*36

            Rectangle {
                radius: 3
                anchors {
                    left: parent.left
                    top: parent.top
                    bottom: parent.bottom
                }

                width: (parent.width / 6) * (stage - 1)
                color: "#cac636"

                Behavior on width { 
                    PropertyAnimation {
                        duration: 250
                        easing.type: Easing.InOutQuad
                    }
                }
            }
        }
    }
   }