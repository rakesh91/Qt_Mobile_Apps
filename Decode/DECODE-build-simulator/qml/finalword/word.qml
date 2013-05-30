import QtQuick 1.0
import "wordjs.js" as W
//Copyright ©  29/7/2011 Abhishek B S,Rakesh kumar R,Vivek P


Rectangle {
    id: rect
    width: 640
    height: 360

    Timer {
        id: baseT
        interval: 10
        running: true
        repeat: false
        onTriggered: {
            rect.state = "nokia1"
            nokia1T.running = true;
        }
    }
    Timer {
        id: nokia1T
        interval: 10
        running: false
        repeat: false
        onTriggered: {
            rect.state = "nokia2"
            nokia2T.running = true;
        }
    }
    Timer {
        id: nokia2T
        interval: 10
        running: false
        repeat: false
        onTriggered: {
            rect.state = "nokia3"
            nokia3T.running = true;
        }
    }
    Timer {
        id: nokia3T
        interval: 10
        running: false
        repeat: false
        onTriggered: {
            rect.state = "nokia4"
            nokia4T.running = true;
        }
    }
    Timer {
        id: nokia4T
        interval: 2000
        running: false
        repeat: false
        onTriggered: {
            rect.state = "logo"
            logoT.running = true;
        }
    }

    Timer {
        id: logoT
        interval: 1000
        running: false
        repeat: false
        onTriggered: {
            rect.state = "logo2"
            logo2T.running = true;
        }
    }



    Timer {
        id: logo2T
        interval: 3000
        running: false
        repeat: false
        onTriggered: {
            rect.state = "mainMenu4"
            mainMenu4T.running = true;
        }
    }

    Timer {
        id: mainMenu4T
        interval: 100
        running: false
        repeat: false
        onTriggered: {
            mainMenu4T.running = false;
            rect.state = "mainMenu5"
            //mainMenu2T.running = true;
        }
    }

    ////////
    Timer {
        id: mainMenu1T
        interval: 500
        running: false
        repeat: false
        onTriggered: {
            rect.state = "mainMenu2"
            //mainMenu2T.running = true;
        }
    }



    Timer {
        id: backClickedT
        interval: 10
        running: false
        repeat: false
        onTriggered: {
            backClickedT.running = false;
            rect.state = "backClicked1"
            //nokia1T.running = true;
        }
    }

    Timer {
        id: exitMenuT
        interval: 10
        running: false
        repeat: false
        onTriggered: {
            rect.state = "exitMenu1"
            //nokia1T.running = true;
        }
    }



    Timer {
        id: toCorrectT
        interval: 1000
        running: false
        repeat: false
        onTriggered: {

          if(W.category==1)
              {
              W.cricket();
          }
          else  if(W.category==2)
          {
          W.Football();
      }
          else  if(W.category==3)
          {
          W.Games();
      }
          else  if(W.category==4)
          {
          W.Movie();
      }
          else  if(W.category==5)
          {
          W.Famous();
      }


          if(W.level==1)
              {
              W.level1();
          }

         else if(W.level==2)
              {
              W.level2();
          }
          else if(W.level==3)
               {
               W.level3();
           }

          rect.state = "playArea"
          gstar2.opacity=1;
          gstar1.opacity=1;
          gstar3.opacity=1;
          score.text=""+W.score;
          sampleQ.text=W.sampleA;
          sampleA.text=W.sampleQ;
          actualQ.text=W.showA;





        }
    }

    Timer {
        id: toWrongT
        interval: 1000
        running: false
        repeat: false
        onTriggered: {

            if(W.starcount<3)
                {
                rect.state = "playArea"


                if(W.starcount==1)
                 gstar2.opacity=0.4;
                else if(W.starcount==2)
                    { gstar3.opacity=0.4;
                     gstar2.opacity=0.4;
                }
 score.text=""+W.score;
                sampleQ.text=W.sampleA;
                sampleA.text=W.sampleQ;
                actualQ.text=W.showA;

            }
            else
                {

                   gstar2.opacity=1;
                  gstar1.opacity=1;
                  gstar3.opacity=1;
                W.starcount=0;
                if(W.category==1)
                    {
                    W.cricket();
                }
                else  if(W.category==2)
                {
                W.Football();
            }
                else  if(W.category==3)
                {
                W.Games();
            }
                else  if(W.category==4)
                {
                W.Movie();
            }
                else  if(W.category==5)
                {
                W.Famous();
            }


                if(W.level==1)
                    {
                    W.level1();
                }

               else if(W.level==2)
                    {
                    W.level2();
                }
                else if(W.level==3)
                     {
                     W.level3();
                 }

                rect.state = "playArea"
 score.text=""+W.score;
                sampleQ.text=W.sampleA;
                sampleA.text=W.sampleQ;
                actualQ.text=W.showA;


            }


        }
    }


    Image {
        id: exitMenuWheel
        x: 9
        y: 141
        source: "menuComponents/emptyWheel.png"
        opacity: 0

        Image {
            id: ays
            x: 271
            y: 50
            source: "menuComponents/ays.png"
            opacity: 0
        }

        Image {
            id: yesButton
            x: 160
            y: 150
            source: "menuComponents/yesButton.png"
            opacity: 0

            MouseArea {
                id: maYesButt
                x: 271
                y: 174
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    Qt.quit();
                }
            }
        }

        Image {
            id: noButton
            x: 466
            y: 150
            source: "menuComponents/noButton.png"
            opacity: 0

            MouseArea {
                id: maNOButt
                x: 520
                y: 190
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    rect.state = "mainMenu4"
                    mainMenu4T.running = true;
                }
            }
        }
    }

    Image {
        id: bgPic
        x: 116
        y: 32
        source: "bgMain.png"
        opacity: 0

        Text {
            id: wrongdisplay
            x: 80
            y: 305
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        Text {
            id: text1
            x: 232
            y: 127
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        Text {
            id: text2
            x: 288
            y: 181
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }
    }

    Image {
        id: logoF
        x: 176
        y: 146
        source: "logoF.png"
        opacity: 0
    }

    Image {
        id: pencil
        x: 384
        y: 20
        source: "pencil.png"
        opacity: 0
    }

    Image {
        id: logoH
        x: 183
        y: 146
        source: "logoH.png"
        opacity: 0
    }




    Image {
        id: scoreCard
        x: 254
        y: 70
        source: "playComponents/scoreCard.png"
        opacity: 0
    }

    Image {
        id: questionSlot
        x: 16
        y: 160
        source: "playComponents/questionSlot.png"
        opacity: 0
    }


    Image {
        id: decodeCard
        x: 278
        y: 160
        source: "playComponents/decodeCard.png"
        opacity: 0
    }

    Image {
        id: exampleSlot
        x: 16
        y: 20
        source: "playComponents/exampleSlot.png"
        opacity: 0
    }




    Image {
        id: hintCard
        x: 264
        y: -14
        source: "playComponents/hintCard.png"
        opacity: 0
    }

    Image {
        id: no
        x: 6
        y: 264
        source: "playComponents/no.png"
        opacity: 0

        MouseArea {
            id: mano
            x: 25
            y: 275
            width: 100
            height: 100
            opacity: 0
            anchors.fill: parent
            onClicked: {
                //console.log("clicked NO button")

                 W.resstring=actualA.text;

                rect.state = "backClicked"

                backClickedT.running = true;


            }
        }
    }


    Image {
        id: yes
        x: 542
        y: 264
        source: "playComponents/yes.png"
        opacity: 0

        MouseArea {
            id: mayes
            x: 406
            y: 135
            width: 100
            height: 100
            opacity: 0
            anchors.fill: parent
            onClicked: {
                console.log("clicked YES button")
//                slantgstar2.z = 0;
//                slantgstar1.opacity = 0;
//                slantgstar1.z = 0;
                  W.ushowA=actualA.text;
                W.test();
                  if(W.bol==1)
                      {
                      W.starcount=0;
                rect.state = "yesClickedAndR"
                      toCorrectT.running = true
                  }
                  else
                      {

                      W.starcount++;
                      if(W.starcount==3)
                       wrongdisplay.text=W.showQ
                      else
                          wrongdisplay.text="";
                       rect.state = "yesClickedAndW"
                      toWrongT.running = true
                  }

//                Put the things that have to to be
//                done in win state below ths comment
//                slantgstar2.z = 0;
            }
        }
    }

    Image {
        id: gstar3
        x: 345
        y: 68
        source: "playComponents/gstar.png"
        opacity: 0
    }


    Image {
        id: gstar2
        x: 329
        y: 175
        source: "playComponents/gstar.png"
        opacity: 0
    }

    Image {
        id: gstar1
        x: 252
        y: 178
        source: "playComponents/gstar.png"
        opacity: 0
    }


    Text {
        id: sampleQ
        x: 260
        y: 52
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }




    states: [
        State {
            name: "nokia1"

            PropertyChanges {
                target: bgPic
                x: 0
                y: 0
                z: 3
                opacity: 1
            }
        },
        State {
            name: "nokia2"
            PropertyChanges {
                target: bgPic
                x: 0
                y: 0
                z: 3
                opacity: 1
            }
        },
        State {
            name: "nokia3"
            PropertyChanges {
                target: bgPic
                x: 0
                y: 0
                z: 3
                opacity: 1
            }
        },
        State {
            name: "nokia4"
            PropertyChanges {
                target: bgPic
                x: 0
                y: 0
                z: 3
                opacity: 1
            }

            PropertyChanges {
                target: text1
                x: 116
                y: 101
                text: "Student Developer Nokia"
                font.family: "Calibri"
                font.pixelSize: 40
                opacity: 1
            }

            PropertyChanges {
                target: text2
                x: 268
                y: 178
                text: "presents"
                font.family: "Calibri"
                font.pixelSize: 35
                opacity: 1
            }
        },
        State {
            name: "logo"
            PropertyChanges {
                target: bgPic
                x: 0
                y: 0
                z: 3
                opacity: 1
            }

            PropertyChanges {
                target: logoF
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: pencil
                x: 438
                y: -140
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: logoH
                x: 189
                y: 146
                z: 5
                opacity: 1
            }
        },
        State {
            name: "logo2"
            PropertyChanges {
                target: bgPic
                x: 0
                y: 0
                z: 3
                opacity: 1
            }

            PropertyChanges {
                target: logoF
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: pencil
                x: 286
                y: 110
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: logoH
                x: 189
                y: 146
                z: 5
                opacity: 1
            }
        },
        State {
            name: "mainMenu1"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: menuWheel
                x: -552
                y: -252
                rotation: 90
                z: 5
                opacity: 1
            }
        },
        State {
            name: "mainMenu2"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: menuWheel
                x: -552
                y: -252
                rotation: -24
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: cricketButton
                x: 882
                y: 508
                rotation: 24
                opacity: 1
            }

            PropertyChanges {
                target: soccerButton
                x: 852
                y: 571
                rotation: 24
                opacity: 1
            }

            PropertyChanges {
                target: gamesButton
                x: 824
                y: 634
                rotation: 24
                z: 0
                opacity: 1
            }

            PropertyChanges {
                target: movieButton
                x: 796
                y: 696
                rotation: 24
                opacity: 1
            }

            PropertyChanges {
                target: hallOfFameButton
                x: 768
                y: 759
                rotation: 24
                opacity: 1
            }

            PropertyChanges {
                target: maCricketButton
                x: 0
                y: 0
                width: 243
                height: 62
                rotation: 0
                opacity: 1
            }

            PropertyChanges {
                target: maSoccerButton
                x: 0
                y: 0
                width: 247
                height: 62
                rotation: 0
                opacity: 1
            }

            PropertyChanges {
                target: maGamesButton
                x: 0
                y: 0
                width: 243
                height: 59
                opacity: 1
            }

            PropertyChanges {
                target: maMoviesButton
                x: 0
                y: 0
                width: 252
                height: 58
                opacity: 1
            }

            PropertyChanges {
                target: maHallOfFameButton
                x: 0
                y: 0
                width: 245
                height: 60
                opacity: 1
            }

            PropertyChanges {
                target: categoryBackButton
                rotation: 24
                opacity: 1
            }

            /*PropertyChanges {
                target: macategoryBackButton
                x: 0
                y: 0
                width: 93
                height: 93
                drag.minimumY: -1000
                drag.minimumX: -1000
                mouseY: -289
                mouseX: 55.1
                drag.maximumY: 1000
                drag.maximumX: 1000
                opacity: 1
            }*/
        },
        State {
            name: "mainMenu3"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: menuWheel
                x: -552
                y: -252
                rotation: -154
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: beginnerButton
                x: -185
                y: 719
                rotation: 154
                opacity: 1
            }

            PropertyChanges {
                target: intermediateButton
                x: -215
                y: 658
                rotation: 154
                opacity: 1
            }

            PropertyChanges {
                target: expertButton
                x: -246
                y: 597
                rotation: 154
                opacity: 1
            }

            PropertyChanges {
                target: maBeginnerButton
                x: 0
                y: 0
                width: 243
                height: 58
                opacity: 1
            }

            PropertyChanges {
                target: maIntermediateButton
                x: 0
                y: 0
                width: 243
                height: 61
                opacity: 1
            }

            PropertyChanges {
                target: maExpertButton
                x: 0
                y: 0
                width: 244
                height: 59
                opacity: 1
            }

            PropertyChanges {
                target: categoryBackButton
                opacity: 0
            }

            PropertyChanges {
                target: levelBackButton
                rotation: 154
                opacity: 1
            }

            PropertyChanges {
                target: malevelBackButton
                opacity: 1
            }
        },
        State {
            name: "mainMenu4"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: mainWheel
                rotation: -180
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: exitButton
                z: 0
                opacity: 1
            }

            PropertyChanges {
                target: mainMenuText
                x: -7
                y: 65
                opacity: 1
                rotation: -43
                z: 5
            }

            PropertyChanges {
                target: playButton
                x: 302
                y: 41
                opacity: 1
            }

            PropertyChanges {
                target: helpButton
                x: 302
                y: 109
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 302
                y: 177
                opacity: 1
            }
        },
        State {
            name: "mainMenu5"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: mainWheel
                x: 51
                y: 29
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: exitButton
                z: 0
                opacity: 1
            }

            PropertyChanges {
                target: mainMenuText
                x: -7
                y: 65
                opacity: 1
                rotation: -43
                z: 5
            }

            PropertyChanges {
                target: playButton
                x: 302
                y: 41
                opacity: 1
            }

            PropertyChanges {
                target: helpButton
                x: 302
                y: 109
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 302
                y: 177
                opacity: 1
            }

            PropertyChanges {
                target: maPlayButton
                x: 0
                y: 0
                width: 245
                height: 61
                drag.minimumY: -1000
                drag.minimumX: -1000
                drag.maximumY: 1000
                drag.maximumX: 1000
                opacity: 1
            }

            PropertyChanges {
                target: maHelpButton
                x: 0
                y: 0
                width: 246
                height: 60
                opacity: 1
            }

            PropertyChanges {
                target: maCreditsButton
                x: 0
                y: 0
                width: 246
                height: 60
                opacity: 1
            }

            PropertyChanges {
                target: maExitButton
                x: 0
                y: 0
                width: 246
                height: 61
                opacity: 1
            }
        },
        State {
            name: "exitMenu"
            PropertyChanges {
                target: bgPic
                x: 0
                y: 0
                z: 3
                opacity: 1
            }

            PropertyChanges {
                target: exitMenuWheel
                x: -120
                y: 52
                rotation: -180
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: ays
                opacity: 1
            }

            PropertyChanges {
                target: yesButton
                opacity: 1
            }

            PropertyChanges {
                target: noButton
                opacity: 1
            }

            PropertyChanges {
                target: maYesButt
                x: 0
                y: 0
                width: 241
                height: 57
                opacity: 1
            }

            PropertyChanges {
                target: maNOButt
                x: 0
                y: 0
                width: 242
                height: 57
                opacity: 1
            }
        },
        State {
            name: "exitMenu1"
            PropertyChanges {
                target: bgPic
                x: 0
                y: 0
                z: 3
                opacity: 1
            }

            PropertyChanges {
                target: exitMenuWheel
                x: -120
                y: 52
                rotation: 0
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: ays
                opacity: 1
            }

            PropertyChanges {
                target: yesButton
                opacity: 1
            }

            PropertyChanges {
                target: noButton
                opacity: 1
            }

            PropertyChanges {
                target: maYesButt
                x: 0
                y: 0
                width: 241
                height: 57
                opacity: 1
            }

            PropertyChanges {
                target: maNOButt
                x: 0
                y: 0
                width: 242
                height: 57
                opacity: 1
            }
        },
        State {
            name: "playArea"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: exampleSlot
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: hintCard
                x: 254
                y: -190
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: questionSlot
                x: 16
                y: 152
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: decodeCard
                x: 254
                y: 0
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: no
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: yes
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: scoreCard
                x: 254
                y: 88
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: gstar3
                x: 307
                y: 327
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: gstar2
                x: 341
                y: 327
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: gstar1
                x: 273
                y: 327
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: sampleQ
                x: 281
                y: 49
                width: 80
                color: "#ffffff"
                text: "Sample Question"
                styleColor: "#000000"
                font.bold: true
                font.pixelSize: 30
                font.family: "Calibri"
                smooth: true
                verticalAlignment: "AlignVCenter"
                horizontalAlignment: "AlignHCenter"
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: sampleA
                x: 280
                y: 86
                color: "#ffffff"
                text: "Sample Answer"
                font.family: "Calibri"
                font.bold: true
                smooth: true
                font.pixelSize: 30
                z: 5
                verticalAlignment: "AlignVCenter"
                horizontalAlignment: "AlignHCenter"
                opacity: 1
            }

            PropertyChanges {
                target: actualQ
                x: 281
                y: 170
                color: "#ffffff"
                text: "Actual Question"
                font.pixelSize: 30
                font.bold: true
                font.family: "Calibri"
                smooth: true
                horizontalAlignment: "AlignHCenter"
                verticalAlignment: "AlignVCenter"
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: actualA
                x: 68
                y: 206
                width: 506
                height: 36
                color: "#048ec0"
                text: ""
                font.bold: true
                font.pixelSize: 30
                font.family: "Calibri"
                selectionColor: "#000000"
                z: 5
                smooth: true
                horizontalAlignment: "AlignHCenter"
                opacity: 1
            }

            PropertyChanges {
                target: score
                x: 280
                y: 285
                color: "#048ec0"
                text: "00"
                z: 5
                font.bold: true
                font.pixelSize: 30
                font.family: "Calibri"
                verticalAlignment: "AlignVCenter"
                horizontalAlignment: "AlignHCenter"
                opacity: 1
            }

            PropertyChanges {
                target: mano
                x: 0
                y: 0
                width: 93
                height: 93
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: mayes
                x: 0
                y: 0
                width: 93
                height: 93
                z: 5
                opacity: 1
            }
        },
        State {
            name: "backClicked"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: backWheel
                x: -113
                y: 39
                rotation: -180
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: resumeButton
                opacity: 1
            }

            PropertyChanges {
                target: btmmButton
                x: 307
                y: 189
                opacity: 1
            }

            PropertyChanges {
                target: helpButton2
                x: 307
                y: 115
                opacity: 1
            }

            PropertyChanges {
                target: maResume
                x: 0
                y: 0
                width: 242
                height: 58
                opacity: 1
            }

            PropertyChanges {
                target: maHelp2
                x: 0
                y: 0
                width: 244
                height: 60
                opacity: 1
            }

            PropertyChanges {
                target: maBtmm
                x: 0
                y: 0
                width: 242
                height: 60
                opacity: 1
            }
        },
        State {
            name: "backClicked1"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: backWheel
                x: -113
                y: 39
                rotation: 0
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: resumeButton
                opacity: 1
            }

            PropertyChanges {
                target: btmmButton
                x: 307
                y: 189
                opacity: 1
            }

            PropertyChanges {
                target: helpButton2
                x: 307
                y: 115
                opacity: 1
            }

            PropertyChanges {
                target: maResume
                x: 0
                y: 0
                width: 242
                height: 58
                opacity: 1
            }

            PropertyChanges {
                target: maHelp2
                x: 0
                y: 0
                width: 244
                height: 60
                opacity: 1
            }

            PropertyChanges {
                target: maBtmm
                x: 0
                y: 0
                width: 242
                height: 60
                opacity: 1
            }
        },
        State {
            name: "yesClickedAndR"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: correct
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: slantgstar1
                x: 260
                y: 179
                z: 5
                opacity: 0
            }

            PropertyChanges {
                target: slantgstar2
                x: 293
                y: 173
                z: 5
                opacity: 0
            }

            PropertyChanges {
                target: slantstar3
                x: 324
                y: 167
                z: 5
                opacity: 0
            }
        },
        State {
            name: "yesClickedAndW"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: wrong
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: wrongdisplay
                x: 184
                y: 295
                width: 272
                height: 60
                color: "#048ec0"
                styleColor: "#ffffff"
                verticalAlignment: "AlignVCenter"
                style: "Raised"
                font.family: "Calibri"
                font.italic: false
                font.bold: true
                horizontalAlignment: "AlignHCenter"
                font.pixelSize: 32
                opacity: 1
            }
        },
        State {
            name: "helpMenu"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: 5
                opacity: "1"
            }

            PropertyChanges {
                target: helpscroll
                x: 0
                y: 0
                width: 640
                height: 360
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: helpscrollRectangle
                x: 0
                y: 0
                width: 640
                height: 360
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: helpMenuImage
                x: 0
                y: 0
                opacity: 1
            }

            PropertyChanges {
                target: helpBack
                x: 6
                y: 134
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: maHelpBack
                x: 0
                y: 0
                width: 93
                height: 93
                opacity: 1
            }

            PropertyChanges {
                target: begDemoButton
                opacity: 1
            }

            PropertyChanges {
                target: expertDemoButton
                x: 201
                y: 228
                opacity: 1
            }

            PropertyChanges {
                target: mabegDemo
                x: 0
                y: 0
                width: 252
                height: 68
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area1
                x: 0
                y: 0
                width: 252
                height: 68
                opacity: 1
            }
        },
        State {
            name: "creditsMenu"

            PropertyChanges {
                target: creditsBg
                z: 0
                opacity: 1
            }

            PropertyChanges {
                target: creditsScrollList
                width: 640
                height: 360
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: creditsScroll
                width: 640
                height: 360
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: creditsMenuBackButton
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: macreditsMenuBackButton
                x: 0
                y: 0
                width: 93
                height: 93
                opacity: 1
            }
        },
        State {
            name: "begdemo"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: begDemoRectangle
                width: 640
                height: 360
                z: 10
                opacity: 1
            }

            PropertyChanges {
                target: begDemoListView
                z: 20
            }

            PropertyChanges {
                target: backbegDemo
                x: 5
                y: 164
                width: 74
                height: 73
                opacity: 1
            }

            PropertyChanges {
                target: mabackbegdemo
                x: 0
                y: 0
                width: 74
                height: 73
                opacity: 1
            }
        },
        State {
            name: "expdemo"
            PropertyChanges {
                target: bgPic
                x: "0"
                y: "0"
                z: "3"
                opacity: "1"
            }

            PropertyChanges {
                target: expDemoRectangle
                width: 640
                height: 360
                z: 10
                opacity: 1
            }

            PropertyChanges {
                target: backexpDemo
                x: 0
                y: 166
                width: 74
                height: 69
                opacity: 1
            }

            PropertyChanges {
                target: mabackexpdemo
                z: 20
                opacity: 1
            }

            PropertyChanges {
                target: backbegDemo
                opacity: 0
            }
        }
    ]

    transitions: [
         Transition {
             from: "logo"; to: "logo2"
             NumberAnimation {
                 properties: "x,y";
                // easing.type: Easing.OutBounce;
                 easing.type: Easing.OutElastic
                 duration: 1000
             }
         },
        Transition {
            from: "mainMenu1"; to: "mainMenu2"
            NumberAnimation {
                easing.amplitude: 0.5
                properties: "rotation";
               // easing.type: Easing.OutBounce;
                easing.type: Easing.OutElastic
                duration: 1500
            }
        },
        Transition {
            from: "mainMenu2"; to: "mainMenu3"
            NumberAnimation {
                easing.amplitude: 0.5
                properties: "rotation";
               // easing.type: Easing.OutBounce;
                easing.type: Easing.OutElastic
                duration: 1500
            }
        },
        Transition {
            from: "mainMenu4"; to: "mainMenu5"
            NumberAnimation {
                easing.amplitude: 0.5
                properties: "rotation";
               // easing.type: Easing.OutBounce;
                easing.type: Easing.OutElastic
                duration: 1500
            }
        },
            Transition {
                from: "backClicked"; to: "backClicked1"
                NumberAnimation {
                    easing.amplitude: 0.5
                    properties: "rotation";
                   // easing.type: Easing.OutBounce;
                    easing.type: Easing.OutElastic
                    duration: 1500
                }
        },
        Transition {
            from: "mainMenu3"; to: "mainMenu2"
            NumberAnimation {
                easing.amplitude: 0.5
                properties: "rotation";
               // easing.type: Easing.OutBounce;
                easing.type: Easing.OutElastic
                duration: 1500
            }
        },
        Transition {
            from: "mainMenu2"; to: "mainMenu4"
            NumberAnimation {
                easing.amplitude: 0.5
                properties: "rotation";
               // easing.type: Easing.OutBounce;
                easing.type: Easing.OutElastic
                duration: 1500
            }
        },
        Transition {
            from: "exitMenu"; to: "exitMenu1"
            NumberAnimation {
                easing.amplitude: 0.5
                properties: "rotation";
               // easing.type: Easing.OutBounce;
                easing.type: Easing.OutElastic
                duration: 1500
            }
    }
    ]
    Text {
        id: sampleA
        x: 301
        y: -57
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0

    }


    Text {
        id: actualQ
        x: 301
        y: -90
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }

    TextInput {
        id: actualA
        x: 264
        y: 59
        width: 80
        height: 20

        font.pixelSize: 12
        opacity: 0
    }

    Text {
        id: score
        x: 404
        y: 191
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }


    Image {
        id: correct
        x: 184
        y: 76
        source: "winComponents/correct.png"
        opacity: 0
    }

    Image {
        id: wrong
        x: 184
        y: 76
        source: "winComponents/wrong.png"
        opacity: 0
    }

    Image {
        id: slantgstar1
        x: 237
        y: 182
        source: "winComponents/slantgstar.png"
        opacity: 0
    }

    Image {
        id: slantgstar2
        x: 282
        y: 175
        source: "winComponents/slantgstar.png"
        opacity: 0
    }

    Image {
        id: slantstar3
        x: 352
        y: 167
        source: "winComponents/slantgstar.png"
        opacity: 0
    }


    Rectangle {
        id: helpscrollRectangle
        x: -24
        y: -52
        width: 200
        height: 200
        color: "#ffffff"
        opacity: 0


        Image {
            id: helpMenuImage
            x: 13
            y: 5
            source: "bgMain.png"
            opacity: 0

            Image {
                id: begDemoButton
                x: 194
                y: 67
                source: "menuComponents/begDemo.png"
                opacity: 0

                MouseArea {
                    id: mabegDemo
                    x: 244
                    y: 105
                    width: 100
                    height: 100
                    opacity: 0
                    anchors.fill: parent
                    onClicked: {
                        rect.state = "begdemo";
                    }
                }
            }

            Image {
                id: expertDemoButton
                x: 187
                y: 205
                source: "menuComponents/expDemo.png"
                opacity: 0

                MouseArea {
                    id: mouse_area1
                    x: 209
                    y: 84
                    width: 100
                    height: 100
                    opacity: 0
                    anchors.fill: parent
                    onClicked: {
                        rect.state = "expdemo"
                    }
                }
            }
        }
    }

    Image {
        id: mainWheel
        x: 52
        y: 29
        source: "menuComponents/emptyWheel.png"
        opacity: 0

        Image {
            id: mainMenuText
            x: 182
            y: 187
            source: "menuComponents/mainMenuText.png"
            opacity: 0
        }

        Image {
            id: playButton
            x: 340
            y: 132
            source: "menuComponents/playButton.png"
            opacity: 0

            MouseArea {
                id: maPlayButton
                x: 423
                y: 57
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    rect.state = "mainMenu1"
                    mainMenu1T.running = true;

                }
            }
        }

        Image {
            id: helpButton
            x: 373
            y: 250
            source: "menuComponents/helpButton.png"
            opacity: 0

            MouseArea {
                id: maHelpButton
                x: 388
                y: 133
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    W.help = 0;
                    rect.state = "helpMenu"


                }
            }
        }



        Image {
            id: creditsButton
            x: 302
            y: 218
            source: "menuComponents/creditsButton.png"
            opacity: 0

            MouseArea {
                id: maCreditsButton
                x: 408
                y: 198
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    rect.state = "creditsMenu"

                }
            }
        }


        Image {
            id: exitButton
            x: 302
            y: 245
            source: "menuComponents/exitButton.png"
            opacity: 0

            MouseArea {
                id: maExitButton
                x: 422
                y: 272
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    //Are u sure? MENU should be done
                    //Qt.quit();
                    rect.state = "exitMenu"
                    exitMenuT.running = true;
                }
            }
        }
    }

    Image {
        id: backWheel
        x: 22
        y: 167
        source: "menuComponents/emptyWheel.png"
        opacity: 0

        Image {
            id: resumeButton
            x: 307
            y: 47
            source: "menuComponents/resumeButton.png"
            opacity: 0

            MouseArea {
                id: maResume
                x: 447
                y: 71
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    rect.state = "playArea"
                    sampleQ.text=W.sampleA;
                    sampleA.text=W.sampleQ;
                    actualQ.text=W.showA;
                    actualA.text=W.resstring;


                    if(W.starcount<3)
                        {



                        if(W.starcount==1)
                         gstar2.opacity=0.4;
                        else if(W.starcount==2)
                            { gstar3.opacity=0.4;
                             gstar2.opacity=0.4;
                        }
         score.text=""+W.score;
                        sampleQ.text=W.sampleA;
                        sampleA.text=W.sampleQ;
                        actualQ.text=W.showA;

                    }
                    else
                        {
                          gstar2.opacity=1;
                          gstar1.opacity=1;
                          gstar3.opacity=1;
                    }



                }
            }
        }

        Image {
            id: helpButton2
            x: 307
            y: 183
            source: "menuComponents/helpButton.png"
            opacity: 0

            MouseArea {
                id: maHelp2
                x: 393
                y: 157
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    W.help = 1;
                    rect.state = "helpMenu"
                }
            }
        }

        Image {
            id: btmmButton
            x: 307
            y: 115
            source: "menuComponents/btmmButton.png"
            opacity: 0

            MouseArea {
                id: maBtmm
                x: 391
                y: 225
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    rect.state = "mainMenu4"
                    mainMenu4T.running = true;
                }
            }
        }
    }


    Image {
        id: menuWheel
        x: 23
        y: 52
        source: "menuComponents/menuWheel.png"
        opacity: 0

        Image {
            id: cricketButton
            x: 873
            y: 535
            source: "menuComponents/cricketButton.png"
            opacity: 0

            MouseArea {
                id: maCricketButton
                x: 885
                y: 539
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {

                    W.category=1;
                    W.cricket();
                    rect.state = "mainMenu3"
                }
            }
        }

        Image {
            id: soccerButton
            x: 867
            y: 597
            source: "menuComponents/soccerButton.png"
            opacity: 0

            MouseArea {
                id: maSoccerButton
                x: 889
                y: 580
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                      W.category=2;
                    W.Football();
                    rect.state = "mainMenu3"
                }
            }
        }

        Image {
            id: gamesButton
            x: 863
            y: 637
            source: "menuComponents/gamesButton.png"
            opacity: 0

            MouseArea {
                id: maGamesButton
                x: 910
                y: 639
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                      W.category=3;
                    W.Games() ;
                    rect.state = "mainMenu3"
                }
            }
        }

        Image {
            id: movieButton
            x: 862
            y: 695
            source: "menuComponents/moviesButton.png"
            opacity: 0

            MouseArea {
                id: maMoviesButton
                x: 872
                y: 665
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                      W.category=4;
                    W.Movie();
                    rect.state = "mainMenu3"
                }
            }
        }

        Image {
            id: hallOfFameButton
            x: 869
            y: 719
            source: "menuComponents/hallOfFameButton.png"
            opacity: 0

            MouseArea {
                id: maHallOfFameButton
                x: 865
                y: 731
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {

                      W.category=5;
                    W.Famous();
                    rect.state = "mainMenu3"
                }
            }
        }

        Image {
            id: beginnerButton
            x: -89
            y: 702
            source: "menuComponents/beginnerButton.png"
            opacity: 0

            MouseArea {
                id: maBeginnerButton
                x: -42
                y: 719
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    W.level=1;
                    W.score=0;
                    W.level1();
                    rect.state = "playArea"

                    sampleQ.text=W.sampleA;
                    sampleA.text=W.sampleQ;
                    actualQ.text=W.showA;


                }
            }
        }

        Image {
            id: intermediateButton
            x: -97
            y: 629
            source: "menuComponents/intermediateButton.png"
            opacity: 0

            MouseArea {
                id: maIntermediateButton
                x: -92
                y: 651
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {

                    /*W.level=3;
                    W.score=0;
                    W.level3();
                    rect.state = "playArea"

                    sampleQ.text=W.sampleA;
                    sampleA.text=W.sampleQ;
                    actualQ.text=W.showA;*/
                    W.level=2;
                    W.score=0;
                    W.level2();
                    rect.state = "playArea"

                    sampleQ.text=W.sampleA;
                    sampleA.text=W.sampleQ;
                    actualQ.text=W.showA;

                }
            }
        }

        Image {
            id: expertButton
            x: -207
            y: 637
            source: "menuComponents/expertButton.png"
            opacity: 0

            MouseArea {
                id: maExpertButton
                x: -155
                y: 591
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    W.level=3;
                    W.score=0;
                    W.level3();
                    rect.state = "playArea"

                    sampleQ.text=W.sampleA;
                    sampleA.text=W.sampleQ;
                    actualQ.text=W.showA;

                }
            }
        }

        Image {
            id: categoryBackButton
            x: 560
            y: 574
            source: "playComponents/no.png"
            opacity: 0

            MouseArea {
                id: macategoryBackButton
                x: 580
                y: 588
                width: 100
                height: 100
                opacity: 1
                anchors.fill: parent
                onClicked: {
                    mainMenu4T.running=true
                    rect.state = "mainMenu4";
                }
            }
        }

        Image {
            id: levelBackButton
            x: 139
            y: 413
            source: "playComponents/no.png"
            opacity: 0

            MouseArea {
                id: malevelBackButton
                x: 164
                y: 438
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    rect.state = "mainMenu2"
                }
            }
        }
    }

    Image {
        id: helpBack
        x: 22
        y: 175
        source: "playComponents/no.png"
        opacity: 0

        MouseArea {
            id: maHelpBack
            x: 26
            y: 154
            width: 100
            height: 100
            opacity: 0
            anchors.fill: parent

            onClicked : {
                if(W.help==0)
                {
                    mainMenu4T.running = true;
                    rect.state = "mainMenu4"
                }
                else if(W.help==1)
                {
                    backClickedT.running=true;
                    rect.state = "backClicked"
                }
            }
        }
    }

    Rectangle {
        id: creditsScroll
        x: 0
        y: 0
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0

        ListView {
            id: creditsScrollList
            x: 0
            y: 0
            width: 300
            height: 300
            opacity: 0
            model: creditsModel
            delegate: Text{
                text: creditsText
                color : "#0099FF"
                font.family: "Comic Sans MS"
                font.pixelSize: 30
            }
        }


        ListModel {
            id: creditsModel
            ListElement{
                creditsText : "<pre align='center'>
   Student Nokia Forum Developers

         ABHISHEK B S
         RAKESH KUMAR R
         SADAN SOHAN
         SANDEEP RAJU P
         VIVEK P
pinch us @:
    fivemasterminds@gmail.com


                    </pre>"

            }

        }
//                    Rectangle {
//                        id: helpscrollRectangle
//                        x: -24
//                        y: -52
//                        width: 200
//                        height: 200
//                        color: "#ffffff"
//                        opacity: 0

//                        ListView {
//                            id: helpscroll
//                            x: 0
//                            y: 0
//                            width: 300
//                            height: 300
//                            opacity: 0
//                            model: helpModel
//                            delegate: Text {
//                                text : helpElement
//                                color : "#0099FF"
//                                font.family: "Comic Sans MS"
//                                font.pixelSize: 30
//                            }
//                        }

//                        ListModel {
//                            id: helpModel

//                            ListElement {
//                                helpElement :  "<pre align='center'>
//                              THE GAME FOCUSES ON DECODING
//                              THE STRING GIVEN TO YOU USING THE
//                              HINT GIVEN ABOVE THE QUESTION

//                              THE ANSWER SHOULD BELONG TO ONE
//                              OF THE FIVE CATEGORIES YOU WOULD
//                              HAVE CHOSEN BEFORE THE GAMEPLAY

//                              THE POSITION OF EACH LETTER
//                              PLAYS A MAIN ROLE IN THIS GAME

//                              NOTE CAREFULLY THAT THE
//                              1ST LETTER IS IN THE POSITION ZERO(0)
//                              2ND LETTER IS IN POSITION ONE(1)
//                              AND SO ON ..

//                              COUNT ONLY THE LETTERS FOR POSITIONS.
//                              IGNORE THE SPACES FOR POSITIONS.
//                              BUT THE ANSWER SHOULD CONSIST OF
//                              APPROPRIATE SPACES
//                                  </pre>"
//                            }
//                        }

        Image {
            id: creditsBg
            x: 0
            y: 0
            source: "bgMain.png"
            opacity: 0
        }
    }

    Image {
        id: creditsMenuBackButton
        x: 30
        y: 134
        source: "playComponents/no.png"
        opacity: 0

        MouseArea {
            id: macreditsMenuBackButton
            x: 42
            y: 141
            width: 100
            height: 100
            opacity: 0
            anchors.fill: parent
            onClicked: {
                mainMenu4T.running = true
                rect.state = "mainMenu4"
            }
        }
    }

    Rectangle {
        id: begDemoRectangle
        x: 0
        y: 0
        width: 200
        height: 200
        color: "#ffffff"
        opacity: 0

        ListView {
            id: begDemoListView
            x: 0
            y: 0
            width: parent.width
            height: 400

            model: begDemoModel
            delegate: Text {
                            x: 100
                            text:"\n" + sandeep + "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n_________________________________________________________________\n\n\n\n"
                            color: "#048ec0"
                            font.family: "Calibri"
                            font.bold: true
                            font.pixelSize: 18
                            Image {
                                    x: 0
                                    y: 300
                                    width: 500
                                    height: 300
                                    source: rakesh
                                }
            }

            Image {
                id: backbegDemo
                x: 2
                y: 150
                source: "playComponents/no.png"
                opacity: 0

                MouseArea {
                    id: mabackbegdemo
                    x: 19
                    y: 148
                    width: 100
                    height: 100
                    opacity: 0
                    anchors.fill: parent
                    onClicked: {
                        rect.state = "helpMenu"
                    }
                }
            }
            }

        ListModel {
            id:begDemoModel


            ListElement {
                sandeep: "<pre align:'center'>
This is a demo which guides you through
the steps of playing the Decode Beginner stage
A step-wise method of solving has been given
in this Demo
Scroll down to find out how to solve
the Question given in Decode
                        </pre>"

            }
            ListElement {
                sandeep: "<pre>
Question to be decoded is RMW QRMPW
                </pre>\n"
                rakesh: "begscreen/2.jpg"
            }
            ListElement {
                sandeep: "<pre>
   Analyse the hint given below.
   Q=>S
   R=>T
   so the coding is
   substitution of each letter by the second letter from it.
   R=>T
   M=>O

                </pre>"
                rakesh: "begscreen/3.jpg"
            }
            ListElement {
                sandeep: "<pre>
  Likewise,
  W=>Y
  Q=>S
 neglect the SPACES in between.
                </pre>"
                rakesh: "begscreen/4.jpg"
            }
            ListElement {
                sandeep: ""
                rakesh: "begscreen/5.jpg"
            }
            ListElement {
                sandeep: ""
                rakesh: "begscreen/6.jpg"
            }
            ListElement {
                sandeep: ""
                rakesh: "begscreen/7.jpg"
            }


        }
    }

    Rectangle {
        id: expDemoRectangle
        x: 0
        y: 0
        width: 200
        height: 200
        color: "#ffffff"
        opacity: 0


        ListView {
            id: expDemoListView
            x: 0
            y: 0
            width: parent.width
            height: 400

            model: expDemoModel
            delegate: Text {
                            x: 100
                            text:"\n" + sandeep + "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n_________________________________________________________________\n\n\n\n"
                            color: "#048ec0"
                            font.family: "Calibri"
                            font.bold: true
                            font.pixelSize: 18
                            Image {
                                    x: 0
                                    y: 300
                                    width: 500
                                    height: 300
                                    source: rakesh
                                }
            }

            Image {
                id: backexpDemo
                x: 2
                y: 150
                source: "playComponents/no.png"
                opacity: 0

                MouseArea {
                    id: mabackexpdemo
                    x: 19
                    y: 148
                    width: 100
                    height: 100
                    opacity: 0
                    anchors.fill: parent
                    onClicked: {
                        rect.state = "helpMenu"
                    }
                }
            }
            }

        ListModel {
            id:expDemoModel


            ListElement {
                sandeep: "<pre align:'center'>
This is a demo which guides you through
the steps of playing the Decode Beginner stage
A step-wise method of solving has been given
in this Demo
Scroll down to find out how to solve
the Question given in Decode
                        </pre>"

            }
            ListElement {
                sandeep:"<pre>
  Be careful about the positions
  of the letters in this level.
                              </pre>"
                rakesh: "expscreen/h1.jpg"
            }
            ListElement {
                sandeep: "<pre>
  In general, each letter is replaced
  by the letter which is two letters behind it.
                U=>S
                V=>T
                              </pre>"
                rakesh: "expscreen/h2.jpg"
            }
            ListElement {
                sandeep: "<pre>
  But in position 2(which has letter R)
  the coded letter is U
  (which is the the third letter from R)                           </pre>"
                rakesh: "expscreen/h3.jpg"
            }
            ListElement {
                sandeep: "<pre>
  Likewise,
  In positions 2,5,9,14....
  the same would continue.
                              </pre>"
                rakesh: "expscreen/h4.jpg"
            }
            ListElement {
                sandeep: ""
                rakesh: "expscreen/h5.jpg"
            }
            ListElement {
                sandeep: ""
                rakesh: "expscreen/h6.jpg"
            }
            ListElement {
                sandeep: ""
                rakesh: "expscreen/h7.jpg"
            }
            ListElement {
                sandeep: ""
                rakesh: "expscreen/h8.jpg"
            }
            ListElement {
                sandeep: ""
                rakesh: "expscreen/h9.jpg"
            }
            ListElement {
                sandeep: ""
                rakesh: "expscreen/h10.jpg"
            }
            ListElement {
                sandeep: ""
                rakesh: "expscreen/h11.jpg"
            }



        }
    }
}
