import QtQuick 1.0

Rectangle {
    id: rect
    width: 640
    height: 360

    Timer {
        id:playtimer
        interval: 10
        running: true
        onTriggered: {
            rect.state = "playagain"
        }
    }

    Image {
        id: arrowLL
        x: 56
        y: 250
        source: "losearrowL.png"

        MouseArea {
            id: maLL
            x: 0
            y: 0
            width: 49
            height: 52
            anchors.fill: arrowLL
            onClicked: {
                console.log("leftarrowClicked")


                if(rect.state == "playagain")
                    {
                    rect.state = "quit"
                }
                else if(rect.state == "quit") {
                    rect.state = "btmm"
                }
                else if(rect.state == "btmm"){
                    rect.state = "playagain"
                }
            }
        }
    }

    Image {
        id: arrowRR
        x: 540
        y: 250
        source: "losearrowR.png"

        MouseArea {
            id: maRR
            x: 0
            y: 0
            width: 49
            height: 52
            anchors.fill: arrowRR

            onClicked: {
                console.log("rightarrowClicked")
                if(rect.state == "playagain")
                    {
                    rect.state = "btmm"
                }
                else if(rect.state == "btmm") {
                    rect.state = "quit"
                }
                else if(rect.state == "quit"){
                    rect.state = "playagain"
                }
            }
        }
    }

    Image {
        id: playagain
        x: -160
        y: 178
        scale: 0.2
        source: "playagain.png"
    }

    MouseArea {
        id: globalma
        x: 136
        y: 238
        width: 368
        height: 72
        onClicked: {
            console.log("Global mouse area clicked")
            if(rect.state == "playagain")
                {
                console.log("goto playarea");
            }
            else if(rect.state == "quit") {
                console.log("Quit");
            }
            else if(rect.state == "btmm")
                {
                console.log("btmm")
            }
        }
    }

    Image {
        id: btmm
        x: 136
        y: 174
        source: "btmn.png"
        opacity: 0
    }

    Image {
        id: quit
        x: 153
        y: 172
        source: "winQuit.png"
        opacity: 0
    }

    Image {
        id: winTrophy
        x: 28
        y: -11
        scale: 0.7
        source: "trophy.png"

        Image {
            id: youWin
            x: 234
            y: 18
            scale: 0.7
            source: "yw.png"
        }
    }
    states: [
        State {
            name: "btmm"

            PropertyChanges {
                target: playagain
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: btmm
                x: -484
                y: 174
                scale: 0.2
                opacity: 1
            }
        },
        State {
            name: "quit"
            PropertyChanges {
                target: playagain
                opacity: 0
            }

            PropertyChanges {
                target: btmm
                x: -484
                y: 174
                visible: false
                scale: 0.2
                opacity: 1
            }

            PropertyChanges {
                target: quit
                x: 127
                y: 171
                scale: 0.2
                opacity: 1
            }
        },
        State {
            name: "playagain"

            PropertyChanges {
                target: maLL
                visible: true
            }

            PropertyChanges {
                target: maRR
                visible: true
            }

            PropertyChanges {
                target: globalma
                visible: true
            }
        }
    ]
}
