import QtQuick 1.0
import Qt.labs.particles 1.0
import "boardLogic.js" as L

//Copyright © 1-08-2011 Abhishek B S,Rakesh Kumar R,Sadan Sohan,Sandeep Raju,Vivek P
//Pinch us @ fivemasterminds@gmail.com


//----- Sadan , Vivek .06.JULY.2011.05.20.PM.v0.2 -----
//  UI:
//
//
//  LOGIC:
//	- designed 4 functions
//	-
//-----------------------------------------------------------------------





Rectangle {
    id: board
    width: 640
    height: 360
    opacity: 1

    Text {
        id: text8
        text: "You Won"
        opacity:0;
    }

    Text {
        id: text9
        text: "You Lost"
        opacity:0;
    }

    Timer{
        id:lost
        interval:2000
        running:false
        onTriggered: {



            board.state = "Nokia3"

        }
    }

    Image {
        id: bg2
        x: 0
        y: 0
        source: "bg.png"
        opacity: 0
    }

    Timer{
        id:won
        interval:2000
         running:false
        onTriggered: {

            board.state = "Nokia3"

        }
    }

    function functioncall(){


         a1.burst(190,10)
         a2.burst(190,10)
         a3.burst(190,10)
         a4.burst(190,10)
         a5.burst(190,10)
         a6.burst(190,10)
         a7.burst(190,10)
         a8.burst(190,10)
         a9.burst(190,10)
         a10.burst(190,10)
         a11.burst(190,10)
         a12.burst(190,10)
         a13.burst(190,10)
         a14.burst(190,10)
         a15.burst(190,10)
         a16.burst(190,10)
         a17.burst(190,10)
         a18.burst(190,10)
         a19.burst(190,10)

    }

   Particles
    {
        id:x
        x:70
        y:150
        z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 1

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a
        x:70
        y:300
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 1

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:b
        x:120
        y:150
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 1

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:c
        x:120
        y:300
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 1

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:d
        x:540
        y:150
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 1

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:e
        x:540
        y:300
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 1

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }


   Particles
    {
        id:f
        x:590
        y:150
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 1

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:g
        x:590
        y:300
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 1

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a1
        x:209
        y:106
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a2
        x:209
        y:148
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a3
        x:209
        y:198
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }
   Particles
    {
        id:a4
        x:244
        y:132
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a5
        x:226
        y:57
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a6
        x:245
        y:182
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a7
        x:252
        y:231
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a8
        x:295
        y:57
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a9
        x:295
        y:105
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a10
        x:295
        y:155
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a11
        x:295
        y:205
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a12
        x:295
        y:255
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a13
        x:338
        y:82
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a14
        x:345
        y:132
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a15
        x:338
        y:182
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a16
        x:338
        y:232
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a17
        x:381
        y:106
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a18
        x:381
        y:156
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

   Particles
    {
        id:a19
        x:381
        y:206
         z:10
        angle : 270
        angleDeviation : 10
        count : 5
        emissionRate : 1000
        emissionVariance : 1000
        fadeInDuration : 1700
        fadeOutDuration : 1700
        lifeSpan : 1000
        lifeSpanDeviation : 1000
   // motion: Particles
        source :"ball50.png"
        velocity : 100
        velocityDeviation : 100
        opacity: 0

        ParticleMotionWander {
            xvariance: 70
            yvariance: 40
            pace: 500
        }
    }

    Timer {
        id: first
        interval : 10
        running : true
        onTriggered: {

            board.state = "Nokia1"

             second.running=true
        }
   }

    Timer {
        id: second
        interval : 2000
        running : false
        onTriggered: {

            board.state = "Nokia2"
            third.running=true

        }
    }
    Timer {
        id: third
        interval : 3000
        running :false
        onTriggered: {

            board.state = "Nokia3"


        }
    }

    Timer {
        id: test
        interval : 1
        running : false
        onTriggered: {

            board.state = "boardArea"

            L.a()
        }
    }
    Timer {
        id:particleanimator
        interval: 100
        running: false
        onTriggered: {

           // x.burst(600,100)
           // col3b1.opacity=0;
            //particleanimator.running=false;
           // x.burst(5,10);
        }
}


    Image {
            id: boardBg
            x: 0
            y: 0
            source: "numberbg1.png"
            opacity: 1

            Item {
                id: hopes

            Image {
                id: col1b1
                x: 209
                y: 106
                source: "ball50.png"
                opacity: 0

                //Behavior on scale  { NumberAnimation { duration: 1000; easing.type: Easing.OutExpo; } }

                Text {
                    id: col1b1Text
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    text: "1"
                    font.pixelSize: 25
                    opacity: 0
                }
               property bool spawned: false;

                 /*Behavior on x {
                     //enabled: spawned;
                     SpringAnimation
                        {
                        spring: 10; damping: 0.4;
                        }
                 }
                 Behavior on y
                {
                     SpringAnimation
                    {
                        spring: 10; damping: 0.4
                    }
                 }*/


                MouseArea {
                    id: macol1b1
                    x: 189
                    y: 116
                    width: 100
                    height: 100
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {

                         enabled = false



                        if(L.countCorrect ==  L.numberArray[1])
                        {

                            L.countCorrect += 1;
                            col1b1Text.text = L.countCorrect-1;
                            col1b1Text.visible = 1;

                             L.countCorrectLogic();
                    //        col1b1.x -=20;
                    //        col1b1.y -= 20;

                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                            board.state="winstate"
                            won.running=true
                        }

                       // col1b1.scale = 0
                    }
                }

            }

            Image {
                id: col1b2
                x: 209
                y: 148
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col1b2Text
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    text: "2"
                    font.pixelSize: 25
                    opacity: 0
                }

                MouseArea {
                    id: macol1b2
                    x: 189
                    y: 116
                    width: 100
                    height: 100
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[2]) {
                            L.countCorrect += 1;
                            col1b2Text.text = L.countCorrect-1;
                            col1b2Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }

                    }
                }
            }

            Image {
                id: col1b3
                x: 208
                y: 198
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col1b3Text
                    x: 225
                    y: 223
                    text: "text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol1b3
                    x: 189
                    y: 116
                    width: 100
                    height: 100
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[3]) {
                            L.countCorrect += 1;
                            col1b3Text.text = L.countCorrect-1;
                            col1b3Text.visible = 1;

                            L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                            board.state="winstate"
                            won.running=true
                        }
                    }
                }

            }

            Image {
                id: col2b1
                x: 226
                y: 95
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col2b1Text
                    x: 221
                    y: 121
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol2b1
                    x: 189
                    y: 116
                    width: 100
                    height: 100
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[4]) {
                            L.countCorrect += 1;
                            col2b1Text.text = L.countCorrect-1;
                            col2b1Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true

                        }
                    }
                }
            }

            Image {
                id: col2b2
                x: 244
                y: 132
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col2b2Text
                    x: 221
                    y: 121
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol2b2
                    x: 189
                    y: 116
                    width: 100
                    height: 100
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[5]) {
                            L.countCorrect += 1;
                            col2b2Text.text = L.countCorrect-1;
                            col2b2Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }

            Image {
                id: col2b3
                x: 245
                y: 182
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col2b3Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol2b3
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[6]) {
                            L.countCorrect += 1;
                            col2b3Text.text = L.countCorrect-1;
                            col2b3Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }

            Image {
                id: col2b4
                x: 252
                y: 231
                source: "ball50.png"
                opacity: 0


                Text {
                    id: col2b4Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol2b4
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[7]) {
                            L.countCorrect += 1;
                            col2b4Text.text = L.countCorrect-1;
                            col2b4Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }

            Image {
                id: col3b1
                x: 295
                y: 57
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col3b1Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol3b1
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[8]) {
                            L.countCorrect += 1;
                            col3b1Text.text = L.countCorrect-1;
                            col3b1Text.visible = 1;
                            col3b1.z=1;
                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }

                    }
                }
            }

            Image {
                id: col3b2
                x: 295
                y: 105
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col3b2Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol3b2
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[9]) {
                            L.countCorrect += 1;
                            col3b2Text.text = L.countCorrect-1;
                            col3b2Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }

            Image {
                id: col3b3
                x: 295
                y: 155
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col3b3Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol3b3
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0

                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[10]) {
                            L.countCorrect += 1;
                            col3b3Text.text = L.countCorrect-1;
                            col3b3Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }


            Image {
                id: col3b4
                x: 295
                y: 205
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col3b4Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol3b4
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[11]) {
                            L.countCorrect += 1;
                            col3b4Text.text = L.countCorrect-1;
                            col3b4Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }



            Image {
                id: col3b5
                x: 295
                y: 255
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col3b5Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol3b5
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0

                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[12]) {
                            L.countCorrect += 1;
                            col3b5Text.text = L.countCorrect-1;
                            col3b5Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }

            Image {
                id: col4b1
                x: 338
                y: 82
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col4b1Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol4b1
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[13]) {
                            L.countCorrect += 1;
                            col4b1Text.text = L.countCorrect-1;
                            col4b1Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }

            Image {
                id: col4b2
                x: 345
                y: 132
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col4b2Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol4b2
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[14]) {
                            L.countCorrect += 1;
                            col4b2Text.text = L.countCorrect-1;
                            col4b2Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }

            Image {
                id: col4b3
                x: 100
                y: 51
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col4b3Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol4b3
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                       enabled = false

                        if(L.countCorrect ==  L.numberArray[15]) {
                            L.countCorrect += 1;
                            col4b3Text.text = L.countCorrect-1;
                            col4b3Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }






            Image {
                id: col4b4
                x: 338
                y: 231
                source: "ball50.png"
                opacity: 0


                Text {
                    id: col4b4Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol4b4
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[16]) {
                            L.countCorrect += 1;
                            col4b4Text.text = L.countCorrect-1;
                            col4b4Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }



            Image {
                id: col5b1
                x: 381
                y: 106
                source: "ball50.png"
                opacity: 0

                Text {
                    id: col5b1Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol5b1
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[17]) {
                            L.countCorrect += 1;
                            col5b1Text.text = L.countCorrect-1;
                            col5b1Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }

                    }
                }
            }

            Image {
                id: col5b2
                x: 382
                y: 146
                source: "ball50.png"
                opacity: 0


                Text {
                    id: col5b2Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol5b2
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[18]) {
                            L.countCorrect += 1;
                            col5b2Text.text = L.countCorrect-1;
                            col5b2Text.visible = 1;

                             L.countCorrectLogic();
                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }
                    }
                }
            }


            Image {
                id: col5b3
                x: 381
                y: 189
                source: "ball50.png"
                opacity: 0


                Text {
                    id: col5b3Text
                    x: 0
                    y: 0
                    width: 80
                    height: 20
                    text: "Text"
                    font.pixelSize: 12
                    opacity: 0
                }

                MouseArea {
                    id: macol5b3
                    x: 0
                    y: 0
                    width: 50
                    height: 50
                    opacity: 0
                    anchors.fill: parent
                    onClicked:  {
                         enabled = false

                        if(L.countCorrect ==  L.numberArray[19]) {
                            L.countCorrect += 1;

                            col5b3Text.text = L.countCorrect-1;
                            col5b3Text.visible = 1;

                             L.countCorrectLogic();

                        }
                        else{
                            board.state="nextstate";lost.running=true;
                        }
                        if(L.countCorrect==20)
                        {
                             board.state="winstate"
                            won.running=true
                        }

                    }
                }
            }
        }

        Image {
            id: image7
            x: 133
            y: 72
            source: "NUMBERLOGO.png"
            opacity: 0
        }
        }

    Text {
        id: text1
        x: 177
        y: 123
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }

    Text {
        id: text2
        x: 221
        y: 178
        width: 80
        height: 20
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }

    Image {
        id: play
        x: 210
        y: 130
        source: "ball100.png"
        opacity: 0

        Text {
            id: playtex
            x: 322
            y: 38
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: play_area
            x: 77
            y: 0
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                board.state="Nokia4"

            }
        }
    }

    Image {
        id: help
        x: 150
        y: 80
        source: "ball200.png"
        opacity: 0

        Text {
            id: helptex
            x: 322
            y: 88
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: help_area
            x: 233
            y: 69
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                board.state="help"
        }
    }
    }

    Image {
        id: credits
        x: 100
        y: 137
        source: "ball300.png"
        opacity: 0

        Text {
            id: creditstex
            x: 322
            y: 148
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: credits_area
            x: 77
            y: 25
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                board.state="credit"
            }
        }
    }

    Image {
        id: exit
        x: 100
        y: 214
        source: "ball300.png"
        opacity: 0

        Text {
            id: exittex
            x: 322
            y: 218
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0

        }

        MouseArea {
            id: exit_area
            x: 202
            y: 252
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                board.state="exit"
            }
        }
    }

    Image {
        id: level4
        x: 310
        y: 252
        source: "ball300.png"
        opacity: 0

        Text {
            id: level4tex
            x: 322
            y: 218
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: level4_area
            x: 244
            y: 225
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                L.level=4;
                 L.countCorrect=1;
                L.level4r = 1+ (Math.floor(Math.random()*100)%4);
                L.a();
                macol1b1.enabled=true;
                 macol1b2.enabled=true;
                 macol1b3.enabled=true;
                 macol2b1.enabled=true;
                 macol2b2.enabled=true;
                 macol2b3.enabled=true;
                 macol2b4.enabled=true;
                 macol3b1.enabled=true;
                 macol3b2.enabled=true;
                 macol3b3.enabled=true;
                 macol3b4.enabled=true;
                 macol3b5.enabled=true;
                 macol4b1.enabled=true;
                 macol4b2.enabled=true;
                 macol4b3.enabled=true;
                 macol4b4.enabled=true;
                 macol5b1.enabled=true;
                 macol5b2.enabled=true;
                 macol5b3.enabled=true;
                test.running=true
            }
        }
    }

    Image {
        id: level5
        x: 177
        y: 300
        source: "ball300.png"
        opacity: 0

        Text {
            id: level5tex
            x: 329
            y: 314
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: level5_area
            x: 144
            y: 240
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                L.level=5;
                 L.countCorrect=1;
                L.level5r = 1+  (Math.floor(Math.random()*100)%4);
                 L.a();
                macol1b1.enabled=true;
                 macol1b2.enabled=true;
                 macol1b3.enabled=true;
                 macol2b1.enabled=true;
                 macol2b2.enabled=true;
                 macol2b3.enabled=true;
                 macol2b4.enabled=true;
                 macol3b1.enabled=true;
                 macol3b2.enabled=true;
                 macol3b3.enabled=true;
                 macol3b4.enabled=true;
                 macol3b5.enabled=true;
                 macol4b1.enabled=true;
                 macol4b2.enabled=true;
                 macol4b3.enabled=true;
                 macol4b4.enabled=true;
                 macol5b1.enabled=true;
                 macol5b2.enabled=true;
                 macol5b3.enabled=true;

                test.running=true
            }
        }
    }

    Image {
        id: level1
        x: 241
        y: 69
        source: "ball100.png"
        opacity: 0

        Text {
            id: level1tex
            x: 322
            y: 23
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: level1_area
            x: 300
            y: 20
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                L.level=1;
                L.countCorrect=1;
                L.level1r =1+ (Math.floor(Math.random()*100)%4);
                 L.a();
                macol1b1.enabled=true;
                 macol1b2.enabled=true;
                 macol1b3.enabled=true;
                 macol2b1.enabled=true;
                 macol2b2.enabled=true;
                 macol2b3.enabled=true;
                 macol2b4.enabled=true;
                 macol3b1.enabled=true;
                 macol3b2.enabled=true;
                 macol3b3.enabled=true;
                 macol3b4.enabled=true;
                 macol3b5.enabled=true;
                 macol4b1.enabled=true;
                 macol4b2.enabled=true;
                 macol4b3.enabled=true;
                 macol4b4.enabled=true;
                 macol5b1.enabled=true;
                 macol5b2.enabled=true;
                 macol5b3.enabled=true;



                test.running=true
            }
        }
    }

    Image {
        id: level2
        x: 213
        y: 185
        source: "ball200.png"
        opacity: 0

        Text {
            id: level2tex
            x: 322
            y: 80
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: level2_area
            x: 244
            y: 114
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                L.level=2;
                 L.countCorrect=1;
                 L.level2r =1+  (Math.floor(Math.random()*100)%4);
                 L.a();
                macol1b1.enabled=true;
                 macol1b2.enabled=true;
                 macol1b3.enabled=true;
                 macol2b1.enabled=true;
                 macol2b2.enabled=true;
                 macol2b3.enabled=true;
                 macol2b4.enabled=true;
                 macol3b1.enabled=true;
                 macol3b2.enabled=true;
                 macol3b3.enabled=true;
                 macol3b4.enabled=true;
                 macol3b5.enabled=true;
                 macol4b1.enabled=true;
                 macol4b2.enabled=true;
                 macol4b3.enabled=true;
                 macol4b4.enabled=true;
                 macol5b1.enabled=true;
                 macol5b2.enabled=true;
                 macol5b3.enabled=true;
                test.running=true
            }
        }
    }

    Image {
        id: level3
        x: 107
        y: 137
        source: "ball300.png"
        opacity: 0

        Text {
            id: level3tex
            x: 322
            y: 144
            width: 80
            height: 20
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: leve3_area
            x: 221
            y: 170
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                L.level=3;
                 L.countCorrect=1;
                 L.level3r = 1+  (Math.floor(Math.random()*100)%2);
                 L.a();
                macol1b1.enabled=true;
                 macol1b2.enabled=true;
                 macol1b3.enabled=true;
                 macol2b1.enabled=true;
                 macol2b2.enabled=true;
                 macol2b3.enabled=true;
                 macol2b4.enabled=true;
                 macol3b1.enabled=true;
                 macol3b2.enabled=true;
                 macol3b3.enabled=true;
                 macol3b4.enabled=true;
                 macol3b5.enabled=true;
                 macol4b1.enabled=true;
                 macol4b2.enabled=true;
                 macol4b3.enabled=true;
                 macol4b4.enabled=true;
                 macol5b1.enabled=true;
                 macol5b2.enabled=true;
                 macol5b3.enabled=true;
                test.running=true
            }
        }
    }


    Image
    {
        id:bg
        source:"numberbg1.png"
        x:0
        y:0
        width: 640
        height: 360
        opacity: 0
        ListView {
            id: myListView
            height:  parent.height
            width: parent.width
            x:0
            y:0
            model:  myListModel
            delegate: Text{
                id: text12
                text: MyText
                //color: "black"
                color: "#951C39"
                font.pixelSize: 20
                font.family: "MV Boli"

            }

            Image {
                id: image6
                x: 519
                y: 94
                source: "balloon.png"
                opacity: 0

                Text {
                    id: text13
                    x: 2
                    y: 1
                    text: "text"
                    font.pixelSize: 18
                    //color: "#00FFFF"
                    opacity: 0
                }

                MouseArea {
                    id: mouse_area3
                    x: 0
                    y: 0
                    width: 100
                    height: 100
                    opacity: 0
                    onClicked: {
                        board.state="Nokia3"
                    }
                }
            }


        }

        ListModel {
            id: myListModel
            ListElement {
                MyText: "<pre align='center'>
This is a mind teaser.
You aim is to correctly find the order
in which the numbers from 1 to 19
are arranged in the grid.
After you identify the pattern start
clicking the bubbles in the order you
think the numbers has been arranged.
You win if you get the sequence correctly.
Play through differnet levels and become a
master Sequence Cracker.

<b>BEST OF LUCK</b>
                    </pre>"
            }
        }

        Image {
            id: image1
            x: 528
            y: 90
            source: "balloon.png"
            opacity: 0

            Text {
                id: text4
                x: 555
                y: 163
                text: "text"
                font.pixelSize: 12
                opacity: 0
            }

            MouseArea {
                id: creditback
                x: 0
                y: 0
                width: 100
                height: 100
                opacity: 0
                onClicked: {
                    board.state="Nokia3"

                }
            }
        }



    }

    Image
    {
        id:bg1
        source:"numberbg1.png"
        x:0
        y:0
        width: 640
        height: 360
        opacity: 0
        ListView {
            id: myHelpView
            height:  parent.height
            width: parent.width
            x:0
            y:0
            model:  myHelpModel
            delegate: Text{
                text: helpText
                font.pixelSize: 18
                color: "#000000"

            }

            Image {
                id: image5
                x: 506
                y: 100
                source: "balloon.png"
                opacity: 0

                MouseArea {
                    id: mouse_area2
                    x: 0
                    y: 0
                    width: 100
                    height: 100
                    opacity: 0
                    onClicked: {
                        board.state="Nokia3"
                    }
                }

                Text {
                    id: text11
                    x: 0
                    y: 0
                    text: "text"
                    font.pixelSize: 12
                    opacity: 0
                }
            }


        }

        ListModel {
            id: myHelpModel
            ListElement {
                helpText: "<pre align='center'>

<b>Student Nokia Developers</b>
Abhishek B S
Rakesh Kumar R
Sadan Sohan M
Sandeep Raju P
Vivek P

pinch us at:
   <b>fivemasterminds@gmail.com</b>



                                            </pre>"
            }
        }

        Image {
            id: image2
            x: 267
            y: 160
            source: "balloon.png"
            opacity: 0

            Text {
                id: text5
                x: 0
                y: 0
                text: "text"
                font.pixelSize: 12
                opacity: 0
            }

            MouseArea {
                id: helpback
                x: 0
                y: 0
                width: 100
                height: 100
                opacity: 0
                onClicked: {
                    board.state="Nokia3"

                }
            }
        }


    }

    Image {
        id: levelback
        x: 32
        y: 94
        source: "balloon.png"
        opacity: 0

        Text {
            id: text3
            x: 52
            y: 157
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: mouse_area1
            x: 5
            y: 0
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                board.state="Nokia3"

            }

        }
    }

    Text {
        id: text6
        x: 249
        y: 100
        text: "text"
        font.pixelSize: 12
        opacity: 0
    }

    Image {
        id: image3
        x: 150
        y: 145
        source: "balloon.png"
        opacity: 0

        Text {
            id: text7
            x: 177
            y: 178
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: yes_area
            x: 0
            y: 3
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                Qt.quit();
            }
        }
    }

    Image {
        id: image4
        x: 426
        y: 145
        source: "balloon.png"
        opacity: 0

        Text {
            id: text10
            x: 454
            y: 178
            text: "text"
            font.pixelSize: 12
            opacity: 0
        }

        MouseArea {
            id: no_area
            x: 8
            y: 3
            width: 100
            height: 100
            opacity: 0
            onClicked: {
                board.state="Nokia3"
            }
        }
    }




    states: [
        State {
            name: "Nokia1"

            PropertyChanges {
                target: text1
                x: 102
                y: 95
                text: "Student Nokia Developer"
                font.family: "MS Shell Dlg 2"
                font.pixelSize: 40
                opacity: 1
            }



        },



        State {
            name: "Nokia2"

            PropertyChanges {
                target: image7
                opacity: 1
            }

        },
        State {
            name: "Nokia3"

            PropertyChanges {
                target: play
                x: 283
                y: 25
                width: 100
                height: 40
                opacity: 1
            }

            PropertyChanges {
                target: help
                x: 233
                y: 70
                width: 200
                height: 50
                opacity: 1
            }

            PropertyChanges {
                target: credits
                x: 183
                y: 125
                height: 60
                opacity: 1
            }

            PropertyChanges {
                target: exit
                x: 133
                y: 190
                width: 400
                height: 70
                opacity: 1
            }

            PropertyChanges {
                target: playtex
                x: 18
                y: 0
                text: "PLAY"
                font.pixelSize: 30
                opacity: 1
            }

            PropertyChanges {
                target: level5
                visible: false
            }

            PropertyChanges {
                target: helptex
                x: 40
                y: 66
                text: "CREDITS"
                z: 0
                font.pixelSize: 30
                opacity: 1
            }

            PropertyChanges {
                target: creditstex
                x: 116
                y: -49
                text: "HELP"
                z: 97
                font.pixelSize: 30
                opacity: 1
            }

            PropertyChanges {
                target: exittex
                x: 168
                y: 17
                text: "EXIT"
                font.pixelSize: 30
                opacity: 1
            }

            PropertyChanges {
                target: play_area
                x: 0
                y: 0
                height: 40
                opacity: 1
            }

            PropertyChanges {
                target: help_area
                x: 0
                y: 0
                width: 200
                height: 50
                opacity: 1
            }

            PropertyChanges {
                target: credits_area
                x: 0
                y: 0
                width: 300
                height: 60
                opacity: 1
            }

            PropertyChanges {
                target: exit_area
                x: 0
                y: 0
                width: 400
                height: 70
                opacity: 1
            }

            PropertyChanges {
                target: boardBg
                opacity: 1
            }

        },
        State {
            name: "Nokia4"

            PropertyChanges {
                target: help
                x: 233
                y: 94
                width: 160
                height: 50
                visible: true
                opacity: 0
            }

            PropertyChanges {
                target: credits
                x: 183
                y: 185
                width: 240
                height: 55
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: exit
                height: 60
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: play
                x: 283
                y: 17
                width: 80
                height: 40
                visible: false
                opacity: 0
            }

            PropertyChanges {
                target: level4
                x: 173
                y: 190
                width: 320
                height: 70
                opacity: 1
            }

            PropertyChanges {
                target: level5
                x: 133
                y: 270
                width: 400
                height: 80
                opacity: 1
            }

            PropertyChanges {
                target: level1
                x: 293
                y: 10
                width: 80
                height: 40
                opacity: 1
            }

            PropertyChanges {
                target: level2
                x: 253
                y: 60
                width: 160
                height: 50
                opacity: 1
            }

            PropertyChanges {
                target: level3
                x: 213
                y: 120
                width: 240
                height: 60
                opacity: 1
            }

            PropertyChanges {
                target: level1tex
                x: 8
                y: 9
                text: "LEVEL 1"
                font.pixelSize: 18
                opacity: 1
            }

            PropertyChanges {
                target: level2tex
                x: 30
                y: 8
                text: "LEVEL 2"
                font.pixelSize: 28
                opacity: 1
            }

            PropertyChanges {
                target: level3tex
                x: 52
                y: 0
                text: "LEVEL 3"
                font.pixelSize: 38
                opacity: 1
            }

            PropertyChanges {
                target: level4tex
                x: 74
                y: 6
                text: "LEVEL 4"
                font.pixelSize: 48
                opacity: 1
            }

            PropertyChanges {
                target: level5tex
                x: 96
                y: 0
                text: "LEVEL 5"
                font.pixelSize: 58
                opacity: 1
            }

            PropertyChanges {
                target: level1_area
                x: 0
                y: 0
                width: 80
                height: 40
                opacity: 1
            }

            PropertyChanges {
                target: level2_area
                x: 0
                y: 0
                width: 160
                height: 50
                opacity: 1
            }

            PropertyChanges {
                target: leve3_area
                x: 0
                y: 0
                width: 240
                height: 60
                opacity: 1
            }

            PropertyChanges {
                target: level4_area
                x: 0
                y: 0
                width: 320
                height: 70
                opacity: 1
            }

            PropertyChanges {
                target: level5_area
                x: 0
                y: 0
                width: 400
                height: 80
                opacity: 1
            }

            PropertyChanges {
                target: levelback
                x: 25
                y: 144
                width: 80
                height: 43
                opacity: 1
            }

            PropertyChanges {
                target: text3
                x: 17
                y: 9
                text: "BACK"
                font.pixelSize: 20
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area1
                x: 0
                y: 0
                width: 80
                height: 43
                opacity: 1
            }

        },
        State {
                    name: "boardArea"

                    PropertyChanges {
                        target: boardBg
                        x: 0
                        y: 0
                        z: 0
                        opacity: 1
                    }

                    PropertyChanges {
                        target: x
                        opacity:0
                        z:20
                    }
                    PropertyChanges {
                        target: a
                        opacity:0
                        z:20
                    }
                    PropertyChanges {
                        target: b
                        opacity:0
                        z:20
                    }
                    PropertyChanges {
                        target: c
                        opacity:0
                        z:20
                    }
                    PropertyChanges {
                        target: d
                        opacity:0
                        z:20
                    }
                    PropertyChanges {
                        target: e
                        opacity:0
                        z:20
                    }
                    PropertyChanges {
                        target: f
                        opacity:0
                        z:20
                    }
                    PropertyChanges {
                        target: g
                        opacity:0
                        z:20
                    }

                    PropertyChanges {
                        target: col3b3
                        x: 295
                        y: 157
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col3b2
                        x: 295
                        y: 107
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col3b4
                        x: 295
                        y: 207
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col2b2
                        x: 252
                        y: 132
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col2b3
                        x: 252
                        y: 182
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col4b2
                        x: 338
                        y: 132
                        width: 50
                        height: 50
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col4b3
                        x: 338
                        y: 182
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col2b1
                        x: 252
                        y: 82
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col1b1
                        x: 210
                        y: 105
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col1b2
                        x: 210
                        y: 155
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col1b3
                        x: 211
                        y: 205
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col2b4
                        x: 252
                        y: 232
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col4b4
                        x: 338
                        y: 232
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col3b1
                        x: 295
                        y: 57
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col4b1
                        x: 338
                        y: 82
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col5b1
                        x: 380
                        y: 105
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col5b2
                        x: 380
                        y: 155
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col3b5
                        x: 295
                        y: 257
                        z: 5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col5b3
                        x: 380
                        y: 205
                        z: 5
                        opacity: 1
                    }



                    PropertyChanges {
                        target: macol1b1
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col1b2Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "2"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                        font.pixelSize: 25
                    }

                    PropertyChanges {
                        target: macol1b2
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol3b1
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col2b1Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "4"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        font.pixelSize: 25
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol2b1
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col2b2Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "5"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        font.pixelSize: 25
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                    }



                    PropertyChanges {
                        target: macol2b2
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol1b3
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col4b4Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "16"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                        font.pixelSize: 25
                        z: 0
                    }

                    PropertyChanges {
                        target: col2b3Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "6"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                        font.pixelSize: 25
                    }

                    PropertyChanges {
                        target: col2b4Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "7"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        opacity: 1
                        horizontalAlignment: "AlignHCenter"
                        font.pixelSize: 25
                    }

                    PropertyChanges {
                        target: col3b1Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "8"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        opacity: 1
                        horizontalAlignment: "AlignHCenter"
                        font.pixelSize: 25
                    }

                    PropertyChanges {
                        target: col3b2Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "9"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                        font.pixelSize: 25
                    }

                    PropertyChanges {
                        target: col3b3Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "10"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        font.pixelSize: 25
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col3b4Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "11"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        font.pixelSize: 25
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col3b5Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "12"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                        font.pixelSize: 25
                    }

                    PropertyChanges {
                        target: col4b1Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "13"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                        font.pixelSize: 25
                    }

                    PropertyChanges {
                        target: col4b2Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "14"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                        font.pixelSize: 25
                    }

                    PropertyChanges {
                        target: col4b3Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "15"
                        visible: false
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                        font.pixelSize: 25
                    }

                    PropertyChanges {
                        target: col5b1Text
                        x: 0
                        y: 9
                        width: 51
                        height: 41
                        text: "17"
                        visible: false
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                        font.pixelSize: 25
                    }

                    PropertyChanges {
                        target: col5b2Text
                        x: 0
                        y: 11
                        width: 51
                        height: 39
                        text: "18"
                        visible: false
                        opacity: 1
                        horizontalAlignment: "AlignHCenter"
                        font.pixelSize: 25
                    }

                    PropertyChanges {
                        target: col5b3Text
                        x: 0
                        y: 9
                        width: 51
                        height: 41
                        text: "19"
                        visible: false
                        opacity: 1
                        font.pixelSize: 25
                        horizontalAlignment: "AlignHCenter"
                    }

                    PropertyChanges {
                        target: col1b1Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "1"
                        visible: false
                        z: -10
                        verticalAlignment: "AlignVCenter"
                        font.pixelSize: 25
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                    }

                    PropertyChanges {
                        target: col1b3Text
                        x: 0
                        y: 0
                        width: 50
                        height: 50
                        text: "3"
                        visible: false
                        font.pixelSize: 25
                        verticalAlignment: "AlignVCenter"
                        horizontalAlignment: "AlignHCenter"
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol2b3
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol2b4
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol3b2
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol3b3
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol3b4
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol3b5
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol4b1
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol4b2
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol4b4
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol5b1
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol5b2
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol5b3
                        opacity: 1
                    }

                    PropertyChanges {
                        target: macol4b3
                        opacity: 1
                    }

                    PropertyChanges {
                        target: hopes
                        x: -15
                        y: -5
                        width: 640
                        height: 360
                        scale: 1.4
                    }
                },
        State {
            name: "nextstate"


            PropertyChanges {
                target: text9
                x:232
                y:114
                width: 64
                opacity:1;
                height: 36
                z: 51
                font.pointSize: 40
                scale: 1
            }
            PropertyChanges {
                target: x
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a
                opacity:1
                z:20
            }
            PropertyChanges {
                target: b
                opacity:1
                z:20
            }
            PropertyChanges {
                target: c
                opacity:1
                z:20
            }
            PropertyChanges {
                target: d
                opacity:1
                z:20
            }
            PropertyChanges {
                target: e
                opacity:1
                z:20
            }
            PropertyChanges {
                target: f
                opacity:1
                z:20
            }
            PropertyChanges {
                target: g
                opacity:1
                z:20
            }

            PropertyChanges {
                target: a1
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a2
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a3
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a4
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a5
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a6
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a7
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a8
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a9
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a10
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a11
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a12
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a13
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a14
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a15
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a16
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a17
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a18
                opacity:1
                z:20
            }
            PropertyChanges {
                target: a19
                opacity:1
                z:20
            }

            StateChangeScript { script:functioncall();  }

            PropertyChanges {
                target: bg2
                opacity: 0
            }

            PropertyChanges {
                target: boardBg
                opacity: 1
            }

        },
        State{
            name: "winstate"

            PropertyChanges {
                target: text8
                x:200
                y:114
                width: 64
                opacity:1;
                height: 36
                z: 56
                font.pointSize: 40
                scale: 1
            }

            PropertyChanges {
                target: bg2
                opacity: 0
            }

            PropertyChanges {
                target: boardBg
                opacity: 1
            }

        },



        State{
            name: "credit"

            PropertyChanges {
                target: bg1
                x: 0
                y: 1
                z: 5
                visible: true

                opacity:1

            }

            PropertyChanges {
                target: image1
                x: 525
                y: 151
                width: 80
                height: 41
                opacity: 1
            }

            PropertyChanges {
                target: text4
                x: 15
                y: 8
                text: "BACK"
                font.pixelSize: 20
                opacity: 1
            }

            PropertyChanges {
                target: creditback
                width: 80
                height: 41
                opacity: 1
            }

            PropertyChanges {
                target: image5
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area2
                width: 80
                height: 80
                opacity: 1
            }

            PropertyChanges {
                target: text11
                x: 4
                y: 22
                text: "BACK"
                font.pixelSize: 30
                opacity: 1
            }

            PropertyChanges {
                target: bg
                opacity: 1
            }

            PropertyChanges {
                target: boardBg
                visible: true
            }

            PropertyChanges {
                target: myHelpView
                z: 5
            }

        },

        State{
            name: "help"

            PropertyChanges {
                target: bg
                z: 5

                opacity:1;

            }

            PropertyChanges {
                target: image2
                x: 512
                y: 143
                width: 80
                height: 42
                opacity: 1
            }

            PropertyChanges {
                target: text5
                x: 16
                y: 7
                text: "BACK"
                font.pixelSize: 20
                opacity: 1
            }

            PropertyChanges {
                target: helpback
                width: 80
                height: 42
                opacity: 1
            }

            PropertyChanges {
                target: image6
                x: 516
                y: 118
                opacity: 1
            }

            PropertyChanges {
                target: text13
                x: 4
                y: 22
                text: "BACK"
                font.pixelSize: 30
                opacity: 1
            }

            PropertyChanges {
                target: mouse_area3
                width: 80
                height: 80
                opacity: 1
            }

            PropertyChanges {
                target: myListView
                z: 5
            }

        },
        State{
            name: "exit"

            PropertyChanges {
                target: text6
                x: 200
                y: 82
                text: "Are you sure?"
                font.pixelSize: 40
                opacity: 1
            }

            PropertyChanges {
                target: text7
                x: 18
                y: 22
                text: "yes"
                font.pixelSize: 30
                opacity: 1
            }

            PropertyChanges {
                target: text10
                x: 24
                y: 22
                text: "no"
                font.pixelSize: 30
                opacity: 1
            }

            PropertyChanges {
                target: image3
                opacity: 1
            }

            PropertyChanges {
                target: image4
                opacity: 1
            }

            PropertyChanges {
                target: yes_area
                x: 0
                y: 0
                width: 80
                height: 80
                opacity: 1
            }

            PropertyChanges {
                target: no_area
                x: 0
                y: 0
                width: 80
                height: 80
                opacity: 1
            }


}



    ]
    transitions:
        [
         Transition {
             from: "Nokia1"; to: "Nokia2"
             NumberAnimation {
                 easing.amplitude: 2
                 properties: "opacity";
                 easing.type: Easing.amplitude;
                 duration: 1000
             }
        },

             Transition {
                 from: "Nokia2"; to: "*"
                 NumberAnimation {
                     easing.amplitude: 2
                     properties: "opacity";
                     easing.type: Easing.amplitude;
                     duration: 1500
                 }
             }

    ]
        }





