import QtQuick 1.0

Rectangle {
    id: loserect
    width: 640
    height: 360

    Timer {
        id:playtimer
        interval: 10
        running: true
        onTriggered: {
            loserect.state = "playagain"
        }
    }

    Image {
        id: yhltg
        x: -216
        y: -132
        scale: 0.4
        visible: false
        source: "yhltg.png"
    }

    Image {
        id: arrowLL
        x: 56
        y: 250
        visible: false
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


                if(loserect.state == "playagain")
                    {
                    loserect.state = "quit"
                }
                else if(loserect.state == "quit") {
                    loserect.state = "btmm"
                }
                else if(loserect.state == "btmm"){
                    loserect.state = "playagain"
                }
            }
        }
    }

    Image {
        id: arrowRR
        x: 540
        y: 250
        visible: false
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
                if(loserect.state == "playagain")
                    {
                    loserect.state = "btmm"
                }
                else if(loserect.state == "btmm") {
                    loserect.state = "quit"
                }
                else if(loserect.state == "quit"){
                    loserect.state = "playagain"
                }
            }
        }
    }

    Image {
        id: playagain
        x: -160
        y: 178
        scale: 0.2
        visible: false
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
            if(loserect.state == "playagain")
                {
                console.log("goto playarea");
            }
            else if(loserect.state == "quit") {
                console.log("Quit");
            }
            else if(loserect.state == "btmm")
                {
                console.log("btmm")
            }
        }
    }

    Image {
        id: btmm
        x: 136
        y: 174
        visible: false
        source: "btmn.png"
        opacity: 0
    }

    Image {
        id: quit
        x: 153
        y: 172
        visible: false
        source: "winQuit.png"
        opacity: 0
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
