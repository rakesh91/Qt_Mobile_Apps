import QtQuick 1.0
import "savedjsconsole.js" as D
// Copyright © 31-7-2011 Abhishek B S,Rakesh kumar R,Sadan Sohan,Sandeep Raju,Vivek P

Rectangle {
    id: mainMenu
    width: 640
    height: 360

    Image {
        id:background
        x:0
        y:0
        opacity: 0
        source: "bg.png"


    }

    /*Date modified - 14/06/2011 , Time Modified - 7:45 , Person Modified - Vivek.P
      The work i am doing right now is that
      I am putting a loader and 2 timers which will continuosly check whether all blocks have been completed
      If yes it will either go to a winning State or a losing State


*/


    /*
      lost
      losearrowL
      loserarrowR
      playAgain
       btmm
       losewinquit
       trophy
youwin

*/

    Timer {
        id:pause
        interval: 1000
        running: false
        repeat: false
        onTriggered: {
            console.log("try")

    }
    }

    Timer {
        id:tolosewinTimer
        interval: 5000
        running: true
        repeat: true
        onTriggered: {
            console.log(D.count1+D.count2);
            if(D.count1 + D.count2 == 18) {
                tolosewinTimer.stop();

                mainMenu.state = "aboutMenu"
                if(D.dotsMode == 1) {
                    if(D.count1>D.count2)
                    {
                        if(D.playmode == 1) {
                            console.log("PLAYER - 1 WON")

                            mainMenu.state = "lost"
                            trophy.z=0;
                            playAgain.z=5;
                            losewinquit.z=0;
                            btmm.z=0;
                            lost.z=0;
                            youwin.z=0
                            p1Wins.z=5
                            p2Wins.z=0
                            gameDraw.z=0
                        }
                        else {


                            console.log("YOU WON")
                            mainMenu.state = "lost"
                            trophy.z=5;
                            playAgain.z=5;
                            losewinquit.z=0;
                            btmm.z=0;
                            lost.z=0;
                            youwin.z=5
                            p1Wins.z=0
                            p2Wins.z=0
                            gameDraw.z=0
                            }

                    }
                    else if(D.count1 == D.count2) {
                        console.log("Game Drawed")
                        mainMenu.state = "lost"
                        trophy.z=0;
                        playAgain.z=5;
                        losewinquit.z=0;
                        btmm.z=0;
                        lost.z=0;
                        youwin.z=0
                        p1Wins.z=0
                        p2Wins.z=0
                        gameDraw.z=5
                    }

                    else {
                        if(D.playmode == 1) {
                            console.log("PLAYER - 2 WON")
                            mainMenu.state = "lost"
                            trophy.z=0;
                            playAgain.z=5;
                            losewinquit.z=0;
                            btmm.z=0;
                            lost.z=0;
                            youwin.z=0
                            p1Wins.z=0
                            p2Wins.z=5
                            gameDraw.z=0

                        }
                        else {
                            console.log("YOU LOST")
                            mainMenu.state = "lost"
                            trophy.z=0;
                            playAgain.z=5;
                            losewinquit.z=0;
                            btmm.z=0;
                            lost.z=5;
                            youwin.z=0


                        }

                    }
                }
                else if(D.dotsMode == 2) {
                    if(D.count1<D.count2)
                    {
                        if(D.playmode == 1) {
                            console.log("PLAYER - 1 WON")

                            mainMenu.state = "lost"
                            trophy.z=0;
                            playAgain.z=5;
                            losewinquit.z=0;
                            btmm.z=0;
                            lost.z=0;
                            youwin.z=0
                            p1Wins.z=5
                            p2Wins.z=0
                            gameDraw.z=0
                        }
                        else {


                            console.log("YOU WON")
                            mainMenu.state = "lost"
                            trophy.z=5;
                            playAgain.z=5;
                            losewinquit.z=0;
                            btmm.z=0;
                            lost.z=0;
                            youwin.z=5
                            p1Wins.z=0
                            p2Wins.z=0
                            gameDraw.z=0
                            }

                    }
                    else if(D.count1 == D.count2) {
                        console.log("Game Drawed")
                        mainMenu.state = "lost"
                        trophy.z=0;
                        playAgain.z=5;
                        losewinquit.z=0;
                        btmm.z=0;
                        lost.z=0;
                        youwin.z=0
                        p1Wins.z=0
                        p2Wins.z=0
                        gameDraw.z=5
                    }

                    else {
                        if(D.playmode == 1) {
                            console.log("PLAYER - 2 WON")
                            mainMenu.state = "lost"
                            trophy.z=0;
                            playAgain.z=5;
                            losewinquit.z=0;
                            btmm.z=0;
                            lost.z=0;
                            youwin.z=0
                            p1Wins.z=0
                            p2Wins.z=5
                            gameDraw.z=0

                        }
                        else {
                            console.log("YOU LOST")
                            mainMenu.state = "lost"
                            trophy.z=0;
                            playAgain.z=5;
                            losewinquit.z=0;
                            btmm.z=0;
                            lost.z=5;
                            youwin.z=0


                        }

                    }

                }

            }
        }
    }

    function common()
    {
        D.f();
        console.log(D.count1);
      line1.color = "#2c2c2c"
      line1.opacity = 0.1;
      line2.color = "#2c2c2c"
      line2.opacity = 0.1;
      line3.color = "#2c2c2c"
      line3.opacity = 0.1;
      line4.color = "#2c2c2c"
      line4.opacity = 0.1;
      line5.color = "#2c2c2c"
      line5.opacity = 0.1;
      line6.color = "#2c2c2c"
      line6.opacity = 0.1;
      line7.color = "#2c2c2c"
      line7.opacity = 0.1;
      line8.color = "#2c2c2c"
      line8.opacity = 0.1;
      line9.color = "#2c2c2c"
      line9.opacity = 0.1;
      line10.color = "#2c2c2c"
      line10.opacity = 0.1;
      line11.color = "#2c2c2c"
      line11.opacity = 0.1;
      line12.color = "#2c2c2c"
      line12.opacity = 0.1;
      line13.color = "#2c2c2c"
      line13.opacity = 0.1;
      line14.color = "#2c2c2c"
      line14.opacity = 0.1;
      line15.color = "#2c2c2c"
      line15.opacity = 0.1;
      line16.color = "#2c2c2c"
      line16.opacity = 0.1;
      line17.color = "#2c2c2c"
      line17.opacity = 0.1;
      line18.color = "#2c2c2c"
      line18.opacity = 0.1;
      line19.color = "#2c2c2c"
      line19.opacity = 0.1;
      line20.color = "#2c2c2c"
      line20.opacity = 0.1;
      line21.color = "#2c2c2c"
      line21.opacity = 0.1;
      line22.color = "#2c2c2c"
      line22.opacity = 0.1;
      line23.color = "#2c2c2c"
      line23.opacity = 0.1;
      line24.color = "#2c2c2c"
      line24.opacity = 0.1;

      vline1.color = "#2c2c2c"
      vline1.opacity = 0.1;
      vline2.color = "#2c2c2c"
      vline2.opacity = 0.1;
      vline3.color = "#2c2c2c"
      vline3.opacity = 0.1;
      vline4.color = "#2c2c2c"
      vline4.opacity = 0.1;
      vline5.color = "#2c2c2c"
      vline5.opacity = 0.1;
      vline6.color = "#2c2c2c"
      vline6.opacity = 0.1;
      vline7.color = "#2c2c2c"
      vline7.opacity = 0.1;
      vline8.color = "#2c2c2c"
      vline8.opacity = 0.1;
      vline9.color = "#2c2c2c"
      vline9.opacity = 0.1;
      vline10.color = "#2c2c2c"
      vline10.opacity = 0.1;
      vline11.color = "#2c2c2c"
      vline11.opacity = 0.1;
      vline12.color = "#2c2c2c"
      vline12.opacity = 0.1;
      vline13.color = "#2c2c2c"
      vline13.opacity = 0.1;
      vline14.color = "#2c2c2c"
      vline14.opacity = 0.1;
      vline15.color = "#2c2c2c"
      vline15.opacity = 0.1;
      vline16.color = "#2c2c2c"
      vline16.opacity = 0.1;
      vline17.color = "#2c2c2c"
      vline17.opacity = 0.1;
      vline18.color = "#2c2c2c"
      vline18.opacity = 0.1;
      vline19.color = "#2c2c2c"
      vline19.opacity = 0.1;
      vline20.color = "#2c2c2c"
      vline20.opacity = 0.1;
      vline21.color = "#2c2c2c"
      vline21.opacity = 0.1;

      rectangle1.color = "#ffffff"
      rectangle2.color = "#ffffff"
      rectangle3.color = "#ffffff"
      rectangle4.color = "#ffffff"
      rectangle5.color = "#ffffff"
      rectangle6.color = "#ffffff"
      rectangle7.color = "#ffffff"
      rectangle8.color = "#ffffff"
      rectangle9.color = "#ffffff"
      rectangle10.color = "#ffffff"
      rectangle11.color = "#ffffff"
      rectangle12.color = "#ffffff"
      rectangle13.color = "#ffffff"
      rectangle14.color = "#ffffff"
      rectangle15.color = "#ffffff"
      rectangle16.color = "#ffffff"
      rectangle17.color = "#ffffff"
      rectangle18.color = "#ffffff"
      p1score.text = "0"
      p2score.text = "0"
      tolosewinTimer.running = true
    }




    function pleasework(l,p,d)
    {

       D.level = l;
        D.playmode =p;
        D.dotsMode =d;
        if(p==1)
            {
            p1.text = "PLAYER 1";
            p2.text = "PLAYER 2";
        }
        else if(p==2)
         {
            p1.text = "PLAYER ";
            p2.text = "PHONE";
        }
    }


    function drawLinereverse(x,y,a,b)
       {
           if(x==a)
           {
               if(x==1)
                 {
                   if(y==1)

                       {  console.log("x"+x,"y"+y,"a"+a,"b"+b)

                       line1.color ="#af12fe";
                       line1.opacity=1
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle1.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle1.color="#ff0000"
                       }


                   }

                   if(y==2)

                      {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line2.color ="#af12fe";
                       line2.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle2.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle2.color="#ff0000"
                       }


                   }


                   if(y==3 )

                {console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line3.color ="#af12fe";
                       line3.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle3.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle3.color="#ff0000"
                       }


                   }




                   if(y==4)

                      {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line4.color ="#af12fe";
                       line4.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle4.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle4.color="#ff0000"
                       }


                   }



                   if(y==5 )

                      {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line5.color ="#af12fe";
                       line5.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle5.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle5.color="#ff0000"
                       }


                   }



                   if(y==6 )

                       {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                       line6.color ="#af12fe";
                       line6.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle6.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle6.color="#ff0000"
                       }


                   }


               }
               if(x==2)
               {
                   if(y==1 )

                       {
   console.log("x"+x,"y"+y,"a"+a,"b"+b+"lin1")
                       line7.color ="#af12fe";
                       line7.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle1.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle7.color="#ff0000"
                       }


                   }

                   if(y==2 )

                      {
   console.log("x"+x,"y"+y,"a"+a,"b"+b+"line2")
                       line8.color ="#af12fe";
                       line8.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle2.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle8.color="#ff0000"
                       }


                   }



                   if(y==3 )

                      {console.log("x"+x,"y"+y,"a"+a,"b"+b+"lin3")

                       line9.color ="#af12fe";
                       line9.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle3.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle9.color="#ff0000"
                       }


                   }



                   if(y==4)

                      {
   console.log("x"+x,"y"+y,"a"+a,"b"+b+"lin4")
                       line10.color ="#af12fe";
                       line10.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle4.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle10.color="#ff0000"
                       }


                   }


                   if(y==5 )

                      {console.log("x"+x,"y"+y,"a"+a,"b"+b+"lin5")

                       line11.color ="#af12fe";
                       line11.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle5.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle11.color="#ff0000"
                       }


                   }


                   if(y==6 )

                       {console.log("x"+x,"y"+y,"a"+a,"b"+b+"lin6")
                       line12.color ="#af12fe";
                       line12.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle6.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle12.color="#ff0000"
                       }



                   }


               }
               if(x==3)
               {
                   if(y==1)

                      {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line13.color ="#af12fe";
                       line13.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle7.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle13.color="#ff0000"
                       }


                   }

                   if(y==2 )
                   {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line14.color ="#af12fe";
                       line14.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle8.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle14.color="#ff0000"
                       }


                   }



                   if(y==3 )

                     {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line15.color ="#af12fe";
                       line15.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle9.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle15.color="#ff0000"
                       }


                   }


                   if(y==4 )

                      {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line16.color ="#af12fe";
                       line16.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle10.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle16.color="#ff0000"
                       }


                   }



                   if(y==5  )

                       {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                       line17.color ="#af12fe";
                       line17.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle11.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle17.color="#ff0000"
                       }


                   }



                   if(y==6  )

                     {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line18.color ="#af12fe";
                       line18.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle12.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle18.color="#ff0000"
                       }


                   }


               }
               if(x==4)
               {
                   if(y==1 )

                       {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                       line19.color ="#af12fe";
                       line19.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle13.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle19.color="#ff0000"
                       }


                   }

                   if(y==2 )

                     {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                       line20.color ="#af12fe";
                       line20.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle14.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle20.color="#ff0000"
                       }


                   }



                   if(y==3 )

                      {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line21.color ="#af12fe";
                       line21.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle15.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle21.color="#ff0000"
                       }


                   }



                   if(y==4 )

                      {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line22.color ="#af12fe";
                       line22.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle16.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle22.color="#ff0000"
                       }


                   }



                   if(y==5  )

                       {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line23.color ="#af12fe";
                       line23.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle17.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle23.color="#ff0000"
                       }


                   }

                   if(y==6)

                      {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                       line24.color ="#af12fe";
                       line24.opacity=1;
                       if(D.winnerFlag1==1)
                           {
                           D.winnerFlag1=0;
                           rectangle18.color="#ff0000"
                       }

                       if(D.winnerFlag2==1)
                           {
                           D.winnerFlag2=0;
                           rectangle24.color="#ff0000"
                       }


                   }

               }

       }
          if(y==b)
              {
              if(y==1)
                  {
                  if(x==1)
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline1.color ="#af12fe";
                      vline1.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle1.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle1.color="#ff0000"
                      }


                  }

                  if(x==2 )
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline8.color ="#af12fe";
                      vline8.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle7.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle7.color="#ff0000"
                      }


                  }



                  if(x==3 )
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline15.color ="#af12fe";
                      vline15.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle13.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle13.color="#ff0000"
                      }


                  }


              }
              if(y==2)
                  {
                  if(x==1)
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline2.color ="#af12fe";
                      vline2.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle2.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle1.color="#ff0000"
                      }


                  }
                  if(x==2 )
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline9.color ="#af12fe";
                      vline9.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle8.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle7.color="#ff0000"
                      }


                  }


                  if(x==3 )
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline16.color ="#af12fe";
                      vline16.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle14.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle13.color="#ff0000"
                      }


                  }


              }
              if(y==3)
                  {
                  if(x==1)
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline3.color ="#af12fe";
                      vline3.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle3.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle2.color="#ff0000"
                      }


                  }
                  if(x==2 )
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline10.color ="#af12fe";
                      vline10.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle9.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle8.color="#ff0000"
                      }


                  }


                  if(x==3  )
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline17.color ="#af12fe";
                      vline17.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle15.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle14.color="#ff0000"
                      }


                  }

              }
              if(y==4)
                  {
                  if(x==1)
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline4.color ="#af12fe";
                       vline4.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle4.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle3.color="#ff0000"
                      }


                  }
                  if(x==2 )
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline11.color ="#af12fe";
                       vline11.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle10.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle9.color="#ff0000"
                      }


                  }

                  if(x==3 )
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline18.color ="#af12fe";
                       vline18.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle16.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle15.color="#ff0000"
                      }


                  }


              }
              if(y==5)
                  {
                  if(x==1)
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline5.color ="#af12fe";
                       vline5.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle5.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle4.color="#ff0000"
                      }


                  }
                  if(x==2)
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline12.color ="#af12fe";
                       vline12.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle11.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle10.color="#ff0000"
                      }


                  }


                  if(x==3)
                  {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                      vline19.color ="#af12fe";
                       vline19.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle17.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle16.color="#ff0000"
                      }


                  }
              }
              if(y==6)
                  {
                  if(x==1)
                  {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                      vline6.color ="#af12fe";
                      vline6.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle6.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle5.color="#ff0000"
                      }


                  }
                  if(x==2)
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline13.color ="#af12fe";
                       vline13.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle12.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle11.color="#ff0000"
                      }


                  }
                  if(x==3)
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline20.color ="#af12fe";
                       vline20.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle18.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle17.color="#ff0000"
                      }


                  }
              }
              if(y==7)
                  {
                  if(x==1)
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline7.color ="#af12fe";
                       vline7.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle6.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle6.color="#ff0000"
                      }


                  }
                  if(x==2)
                  {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                      vline14.color ="#af12fe";
                       vline14.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle12.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle12.color="#ff0000"
                      }


                  }
                  if(x==3)
                  {
   console.log("x"+x,"y"+y,"a"+a,"b"+b)
                      vline21.color ="#af12fe";
                       vline21.opacity=1;
                      if(D.winnerFlag1==1)
                          {
                          D.winnerFlag1=0;
                          rectangle18.color="#ff0000"
                      }

                      if(D.winnerFlag2==1)
                          {
                          D.winnerFlag2=0;
                          rectangle18.color="#ff0000"
                      }


                  }
              }
          }
       }

    function drawLine(x,y,a,b)
    {
        if(x==a)
        {
            if(x==1)
              {
                if(y==1)

                    {  console.log("x"+x,"y"+y,"a"+a,"b"+b)

                    line1.color ="#af12fe";
                    line1.opacity=1
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle1.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle1.color="#af12fe"
                    }


                }

                if(y==2)

                   {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line2.color ="#af12fe";
                    line2.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle2.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle2.color="#af12fe"
                    }


                }


                if(y==3 )

             {console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line3.color ="#af12fe";
                    line3.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle3.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle3.color="#af12fe"
                    }


                }




                if(y==4)

                   {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line4.color ="#af12fe";
                    line4.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle4.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle4.color="#af12fe"
                    }


                }



                if(y==5 )

                   {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line5.color ="#af12fe";
                    line5.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle5.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle5.color="#af12fe"
                    }


                }



                if(y==6 )

                    {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                    line6.color ="#af12fe";
                    line6.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle6.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle6.color="#af12fe"
                    }


                }


            }
            if(x==2)
            {
                if(y==1 )

                    {
console.log("x"+x,"y"+y,"a"+a,"b"+b+"lin1")
                    line7.color ="#af12fe";
                    line7.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle1.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle7.color="#af12fe"
                    }


                }

                if(y==2 )

                   {
console.log("x"+x,"y"+y,"a"+a,"b"+b+"line2")
                    line8.color ="#af12fe";
                    line8.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle2.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle8.color="#af12fe"
                    }


                }



                if(y==3 )

                   {console.log("x"+x,"y"+y,"a"+a,"b"+b+"lin3")

                    line9.color ="#af12fe";
                    line9.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle3.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle9.color="#af12fe"
                    }


                }



                if(y==4)

                   {
console.log("x"+x,"y"+y,"a"+a,"b"+b+"lin4")
                    line10.color ="#af12fe";
                    line10.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle4.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle10.color="#af12fe"
                    }


                }


                if(y==5 )

                   {console.log("x"+x,"y"+y,"a"+a,"b"+b+"lin5")

                    line11.color ="#af12fe";
                    line11.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle5.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle11.color="#af12fe"
                    }


                }


                if(y==6 )

                    {console.log("x"+x,"y"+y,"a"+a,"b"+b+"lin6")
                    line12.color ="#af12fe";
                    line12.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle6.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle12.color="#af12fe"
                    }



                }


            }
            if(x==3)
            {
                if(y==1)

                   {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line13.color ="#af12fe";
                    line13.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle7.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle13.color="#af12fe"
                    }


                }

                if(y==2 )
                {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line14.color ="#af12fe";
                    line14.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle8.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle14.color="#af12fe"
                    }


                }



                if(y==3 )

                  {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line15.color ="#af12fe";
                    line15.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle9.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle15.color="#af12fe"
                    }


                }


                if(y==4 )

                   {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line16.color ="#af12fe";
                    line16.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle10.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle16.color="#af12fe"
                    }


                }



                if(y==5  )

                    {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                    line17.color ="#af12fe";
                    line17.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle11.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle17.color="#af12fe"
                    }


                }



                if(y==6  )

                  {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line18.color ="#af12fe";
                    line18.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle12.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle18.color="#af12fe"
                    }


                }


            }
            if(x==4)
            {
                if(y==1 )

                    {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                    line19.color ="#af12fe";
                    line19.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle13.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle19.color="#af12fe"
                    }


                }

                if(y==2 )

                  {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                    line20.color ="#af12fe";
                    line20.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle14.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle20.color="#af12fe"
                    }


                }



                if(y==3 )

                   {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line21.color ="#af12fe";
                    line21.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle15.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle21.color="#af12fe"
                    }


                }



                if(y==4 )

                   {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line22.color ="#af12fe";
                    line22.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle16.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle22.color="#af12fe"
                    }


                }



                if(y==5  )

                    {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line23.color ="#af12fe";
                    line23.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle17.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle23.color="#af12fe"
                    }


                }

                if(y==6)

                   {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                    line24.color ="#af12fe";
                    line24.opacity=1;
                    if(D.winnerFlag1==1)
                        {
                        D.winnerFlag1=0;
                        rectangle18.color="#af12fe"
                    }

                    if(D.winnerFlag2==1)
                        {
                        D.winnerFlag2=0;
                        rectangle24.color="#af12fe"
                    }


                }

            }

    }
       if(y==b)
           {
           if(y==1)
               {
               if(x==1)
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline1.color ="#af12fe";
                   vline1.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle1.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle1.color="#af12fe"
                   }


               }

               if(x==2 )
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline8.color ="#af12fe";
                   vline8.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle7.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle7.color="#af12fe"
                   }


               }



               if(x==3 )
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline15.color ="#af12fe";
                   vline15.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle13.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle13.color="#af12fe"
                   }


               }


           }
           if(y==2)
               {
               if(x==1)
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline2.color ="#af12fe";
                   vline2.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle2.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle1.color="#af12fe"
                   }


               }
               if(x==2 )
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline9.color ="#af12fe";
                   vline9.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle8.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle7.color="#af12fe"
                   }


               }


               if(x==3 )
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline16.color ="#af12fe";
                   vline16.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle14.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle13.color="#af12fe"
                   }


               }


           }
           if(y==3)
               {
               if(x==1)
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline3.color ="#af12fe";
                   vline3.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle3.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle2.color="#af12fe"
                   }


               }
               if(x==2 )
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline10.color ="#af12fe";
                   vline10.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle9.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle8.color="#af12fe"
                   }


               }


               if(x==3  )
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline17.color ="#af12fe";
                   vline17.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle15.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle14.color="#af12fe"
                   }


               }

           }
           if(y==4)
               {
               if(x==1)
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline4.color ="#af12fe";
                    vline4.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle4.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle3.color="#af12fe"
                   }


               }
               if(x==2 )
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline11.color ="#af12fe";
                    vline11.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle10.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle9.color="#af12fe"
                   }


               }

               if(x==3 )
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline18.color ="#af12fe";
                    vline18.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle16.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle15.color="#af12fe"
                   }


               }


           }
           if(y==5)
               {
               if(x==1)
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline5.color ="#af12fe";
                    vline5.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle5.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle4.color="#af12fe"
                   }


               }
               if(x==2)
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline12.color ="#af12fe";
                    vline12.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle11.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle10.color="#af12fe"
                   }


               }


               if(x==3)
               {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                   vline19.color ="#af12fe";
                    vline19.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle17.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle16.color="#af12fe"
                   }


               }
           }
           if(y==6)
               {
               if(x==1)
               {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                   vline6.color ="#af12fe";
                   vline6.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle6.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle5.color="#af12fe"
                   }


               }
               if(x==2)
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline13.color ="#af12fe";
                    vline13.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle12.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle11.color="#af12fe"
                   }


               }
               if(x==3)
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline20.color ="#af12fe";
                    vline20.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle18.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle17.color="#af12fe"
                   }


               }
           }
           if(y==7)
               {
               if(x==1)
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline7.color ="#af12fe";
                    vline7.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle6.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle6.color="#af12fe"
                   }


               }
               if(x==2)
               {console.log("x"+x,"y"+y,"a"+a,"b"+b)

                   vline14.color ="#af12fe";
                    vline14.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle12.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle12.color="#af12fe"
                   }


               }
               if(x==3)
               {
console.log("x"+x,"y"+y,"a"+a,"b"+b)
                   vline21.color ="#af12fe";
                    vline21.opacity=1;
                   if(D.winnerFlag1==1)
                       {
                       D.winnerFlag1=0;
                       rectangle18.color="#af12fe"
                   }

                   if(D.winnerFlag2==1)
                       {
                       D.winnerFlag2=0;
                       rectangle18.color="#af12fe"
                   }


               }
           }
       }
    }



Item{
    id:expand

    Rectangle {
        id: rect
        x: 0
        y: 0
        width: 640
        height: 360
        z: 5
        opacity: 0
        visible: false

        Image {
            id:background1
            x:0
            y:0
            source: "bg.png"


        }





        Grid {
            id: dotGrid
            x: 95
            y: 97
            z: 3
            spacing: 40
            rows: 4
            columns: 7






        Image {
            id: image1
            x: 95
            y: 47
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image2
            x: 103
            y: 45
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image3
            x: 104
            y: 41
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image4
            x: 101
            y: 45
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image5
            x: 99
            y: 48
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image6
            x: 87
            y: 55
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image7
            x: 92
            y: 54
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image8
            x: 87
            y: 46
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image9
            x: 104
            y: 37
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image10
            x: 89
            y: 43
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image11
            x: 97
            y: 40
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image12
            x: 90
            y: 50
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image13
            x: 85
            y: 38
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image14
            x: 98
            y: 50
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image15
            x: 98
            y: 53
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image16
            x: 91
            y: 40
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image17
            x: 94
            y: 48
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image18
            x: 87
            y: 52
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image19
            x: 97
            y: 53
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image20
            x: 85
            y: 38
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image21
            x: 96
            y: 44
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image22
            x: 97
            y: 42
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image23
            x: 99
            y: 42
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image24
            x: 91
            y: 42
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image25
            x: 101
            y: 39
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image26
            x: 99
            y: 46
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image27
            x: 100
            y: 42
            width: 30
            height: 30
            source: "dot.png"
        }

        Image {
            id: image28
            x: 101
            y: 50
            width: 30
            height: 30
            source: "dot.png"
        }


        }





        Rectangle {
            id: line1
            x: 104
            y: 102
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: .1

            MouseArea {
                id: maline1
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;


                   if(D.count<45 && D.dot[1][1][0]==0)
                       { if(D.tempPlayer==8)
                           {
                           line1.color = "#ff0000";
                           line1.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               line1.color = "#af12fe";
                          line1.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,1,1,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle1.color="#ff0000"
                                   else
                                    rectangle1.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle1.color="#af12fe"
                                   else
                                    rectangle1.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle1.color="#ff0000"
                                   else
                                    rectangle1.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle1.color="#af12fe"
                                   else
                                    rectangle1.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,1,1,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if (D.dotsMode==1)
                           rectangle1.color="#ff0000"
                               else
                                rectangle1.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if (D.dotsMode==1)
                           rectangle1.color="#ff0000"
                               else
                                rectangle1.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {
                               D.count++;
                               if(D.dotsMode==1)
                                   {
      var c1 = {x:0,y:0,a:0,b:0};

                                  c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);



                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }
        }
        }
        Rectangle {
            id: line2
            x: 172
            y: 102
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: .1
            MouseArea {
                id: maline2
                x: 21
                y: 0
                width: 42
                height: 15
                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][2][0]==0)
                       { if(D.tempPlayer==8)
                           {
                           line2.color = "#ff0000";
                           line2.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               line2.color = "#af12fe";
                          line2.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,2,1,3)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle2.color="#ff0000"
                                   else
                                    rectangle2.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle2.color="#af12fe"
                                   else
                                    rectangle2.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle2.color="#ff0000"
                                   else
                                    rectangle2.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle2.color="#af12fe"
                                   else
                                    rectangle2.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,2,1,3)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if (D.dotsMode==1)
                           rectangle2.color="#ff0000"
                               else
                                rectangle2.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if (D.dotsMode==1)
                           rectangle2.color="#ff0000"
                               else
                                rectangle2.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {
                               D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                   c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);



                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }


                  }

        }

        Rectangle {
            id: line3
            x: 241
            y: 102
            width: 83
            height: 15
            color: "#2c2c2c"
             opacity: 0.1
            MouseArea {
                id: maline3
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][3][0]==0)
                       { if(D.tempPlayer==8)
                           {
                           line3.color = "#ff0000";
                           line3.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               line3.color = "#af12fe";
                          line3.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,3,1,4)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle3.color="#ff0000"
                                   else
                                    rectangle3.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle3.color="#af12fe"
                                   else
                                    rectangle3.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle3.color="#ff0000"
                                   else
                                    rectangle3.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle3.color="#af12fe"
                                   else
                                    rectangle3.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,3,1,4)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if (D.dotsMode==1)
                           rectangle3.color="#ff0000"
                               else
                                rectangle3.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if (D.dotsMode==1)
                           rectangle3.color="#ff0000"
                               else
                                rectangle3.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                   c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);




                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }



                 }
            }



        Rectangle {
            id: line4
            x: 315
            y: 102
            width: 83
            height: 15
            color: "#2c2c2c"
               opacity: 0.1
            MouseArea {
                id: maline4
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][4][0]==0)
                       { if(D.tempPlayer==8)
                           {
                           line4.color = "#ff0000";
                           line4.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               line4.color = "#af12fe";
                          line4.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,4,1,5)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle4.color="#ff0000"
                                   else
                                    rectangle4.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle4.color="#af12fe"
                                   else
                                    rectangle4.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle14color="#ff0000"
                                   else
                                    rectangle4.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle4.color="#af12fe"
                                   else
                                    rectangle4.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,4,1,5)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if (D.dotsMode==1)
                           rectangle4.color="#ff0000"
                               else
                                rectangle4.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if (D.dotsMode==1)
                           rectangle4.color="#ff0000"
                               else
                                rectangle4.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                  c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);



                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

    //console.log: (D.dots)

                  }

            }



        Rectangle {
            id: line5
            x: 383
            y: 102
            width: 83
            height: 15
            color: "#2c2c2c"
              opacity: 0.1
            MouseArea {
                id: maline5
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][5][0]==0)
                       { if(D.tempPlayer==8)
                           {
                           line5.color = "#ff0000";
                           line5.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               line5.color = "#af12fe";
                          line5.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,5,1,6)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle5.color="#ff0000"
                                   else
                                    rectangle5.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle5.color="#af12fe"
                                   else
                                    rectangle5.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle5.color="#ff0000"
                                   else
                                    rectangle5.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle5.color="#af12fe"
                                   else
                                    rectangle5.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,5,1,6)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if (D.dotsMode==1)
                           rectangle5.color="#ff0000"
                               else
                                rectangle5.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if (D.dotsMode==1)
                           rectangle5.color="#ff0000"
                               else
                                rectangle5.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                  c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);




                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }



            }

        }

        Rectangle {
            id: line6
            x: 455
            y: 102
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            MouseArea {
                id: maline6
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][6][0]==0)
                       { if(D.tempPlayer==8)
                           {
                           line6.color = "#ff0000";
                           line6.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               line6.color = "#af12fe";
                          line6.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,6,1,7)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle6.color="#ff0000"
                                   else
                                    rectangle6.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle6.color="#af12fe"
                                   else
                                    rectangle6.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle6.color="#ff0000"
                                   else
                                    rectangle6.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle6.color="#af12fe"
                                   else
                                    rectangle6.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,6,1,7)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if (D.dotsMode==1)
                           rectangle6.color="#ff0000"
                               else
                                rectangle6.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if (D.dotsMode==1)
                           rectangle6.color="#ff0000"
                               else
                                rectangle6.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {
                                    var c1 = {x:0,y:0,a:0,b:0};

                                   c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);




                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }




            }

        }

        Rectangle {
            id: line7
            x: 101
            y: 173
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            MouseArea {
                id: maline7
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[2][1][0]==0)
                       { if(D.tempPlayer==8)
                           {
                           line7.color = "#ff0000";
                           line7.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               line7.color = "#af12fe";
                          line7.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(2,1,2,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle1.color="#ff0000"
                                   else
                                    rectangle1.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle1.color="#af12fe"
                                   else
                                    rectangle1.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle7.color="#ff0000"
                                   else
                                    rectangle7.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle7.color="#af12fe"
                                   else
                                    rectangle7.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(2,1,2,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if (D.dotsMode==1)
                           rectangle1.color="#ff0000"
                               else
                                rectangle1.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if (D.dotsMode==1)
                           rectangle7.color="#ff0000"
                               else
                                rectangle7.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                   c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);



                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }



            }

        }

     /*   Rectangle {
            id: line8
            x: 172
            y: 173
            width: 83
            height: 15
            color: "#2c2c2c"
            MouseArea {
                id: maline8
                x: 21
                y: 0
                width: 42
                height: 15
            }
            opacity: 0.1
        }

        Rectangle {
            id: line9
            x: 241
            y: 173
            width: 83
            height: 15
            color: "#2c2c2c"
            MouseArea {
                id: maline9
                x: 21
                y: 0
                width: 42
                height: 15
            }
            opacity: 0.1
        }

        Rectangle {
            id: line10
            x: 315
            y: 173
            width: 83
            height: 15
            color: "#2c2c2c"
            MouseArea {
                id: maline10
                x: 21
                y: 0
                width: 42
                height: 15
            }
            opacity: 0.1
        }

        Rectangle {
            id: line11
            x: 383
            y: 173
            width: 83
            height: 15
            color: "#2c2c2c"
            MouseArea {
                id: maline11
                x: 21
                y: 0
                width: 42
                height: 15
            }
            opacity: 0.1
        }

        Rectangle {
            id: line12
            x: 455
            y: 173
            width: 83
            height: 15
            color: "#2c2c2c"
            MouseArea {
                id: maline12
                x: 21
                y: 0
                width: 42
                height: 15
            }
            opacity: 0.1
        }

        Rectangle {
            id: line13
            x: 104
            y: 242
            width: 83
            height: 15
            color: "#2c2c2c"
            MouseArea {
                id: maline13
                x: 21
                y: 0
                width: 42
                height: 15
            }
            opacity: 0.1
        }

        Rectangle {
            id: line14
            x: 172
            y: 242
            width: 83
            height: 15
            color: "#2c2c2c"
            MouseArea {
                id: maline14
                x: 21
                y: 0
                width: 42
                height: 15
            }
            opacity: 0.1
        }

        Rectangle {
            id: line15
            x: 241
            y: 242
            width: 83
            height: 15
            color: "#2c2c2c"
            MouseArea {
                id: maline15
                x: 21
                y: 0
                width: 42
                height: 15
            }
            opacity: 0.1
        }

        Rectangle {
            id: line16
            x: 315
            y: 242
            width: 83
            height: 15
            color: "#2c2c2c"
            MouseArea {
                id: maline16
                x: 21
                y: 0
                width: 42
                height: 15
            }
            opacity: 0.1
        }

        Rectangle {
            id: line17
            x: 383
            y: 242
            width: 83
            height: 15
            color: "#2c2c2c"
            MouseArea {
                id: maline17
                x: 21
                y: 0
                width: 42
                height: 15
            }
            opacity: 0.1
        }

        Rectangle {
            id: line18
            x: 455
            y: 242
            width: 83
            height: 15
            color: "#2c2c2c"
            MouseArea {
                id: maline18
                x: 21
                y: 0
                width: 42
                height: 15
            }
            opacity: 0.1
        }
        */

        ////////////////
        Rectangle {
               id: line8
               x: 172
               y: 173
               width: 83
               height: 15
               color: "#2c2c2c"
               opacity : 0.1
               MouseArea {
                   id: maline8
                   x: 21
                   y: 0
                   width: 42
                   height: 15

        onClicked: {
                       enabled:false;
                      if(D.count<45 && D.dot[1][2][2]==0)
                          { if(D.tempPlayer==8)
                              {
                              line8.color = "#ff0000";
                              line8.opacity=1;
                          }

                                  else if(D.tempPlayer==9)
                                   {
                                  line8.color = "#af12fe";
                             line8.opacity=1;
                          }

                          if(D.playmode==1)//player vs player
                              {
                            D.dotsCaller(2,2,2,3)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle2.color="#ff0000"
                                      else
                                       rectangle2.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle2.color="#af12fe"
                                      else
                                       rectangle2.color="#ff0000"
                                  }
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle8.color="#ff0000"
                                      else
                                       rectangle8.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle8.color="#af12fe"
                                      else
                                       rectangle8.color="#ff0000"
                                  }
                              }



                          }
                          else if(D.playmode==2)//player vs cpu
                              {



                           D.dotsCaller(2,2,2,3)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  D.winnerFlag1=0;
                                  if (D.dotsMode==1)
                              rectangle2.color="#ff0000"
                                  else
                                   rectangle2.color="#af12fe"
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  D.winnerFlag2=0;
                                  if (D.dotsMode==1)
                              rectangle8.color="#ff0000"
                                  else
                                   rectangle8.color="#af12fe"
                              }
                              while(D.tempPlayer==9 && D.count<45)
                                  {D.count++;
                                  if(D.dotsMode==1)
                                      {
      var c1 = {x:0,y:0,a:0,b:0};

                                      c1=D.AIcoordinateGenerator();
                                    D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                     drawLine(c1.x,c1.y,c1.a,c1.b);

                                  }

                               else if(D.dotsMode==2)
                                  {
                                  var c = {x:0,y:0,a:0,b:0};

                                  c=D.AIcoordinateGenerator();
                                D.dotsCaller(c.x,c.y,c.a,c.b);
                                 drawLinereverse(c.x,c.y,c.a,c.b);



                              }

                              }

                          }


                   }
                      p1score.text = ""+D.count1;
                      p2score.text = ""+D.count2;
               }


               }

           }

           Rectangle {
               id: line9
               x: 241
               y: 173
               width: 83
               height: 15
               color: "#2c2c2c"
               opacity:0.1
               MouseArea {
                   id: maline9
                   x: 21
                   y: 0
                   width: 42
                   height: 15

                  onClicked: {
                       enabled:false;
                      if(D.count<45 && D.dot[1][3][2]==0)
                          { if(D.tempPlayer==8)
                              {
                              line9.color = "#ff0000";
                              line9.opacity=1;
                          }

                                  else if(D.tempPlayer==9)
                                   {
                                  line9.color = "#af12fe";
                             line9.opacity=1;
                          }

                          if(D.playmode==1)//player vs player
                              {
                            D.dotsCaller(2,3,2,4)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle3.color="#ff0000"
                                      else
                                       rectangle3.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle3.color="#af12fe"
                                      else
                                       rectangle3.color="#ff0000"
                                  }
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle9.color="#ff0000"
                                      else
                                       rectangle9.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle9.color="#af12fe"
                                      else
                                       rectangle9.color="#ff0000"
                                  }
                              }



                          }
                          else if(D.playmode==2)//player vs cpu
                              {



                           D.dotsCaller(2,3,2,4)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  D.winnerFlag1=0;
                                  if (D.dotsMode==1)
                              rectangle3.color="#ff0000"
                                  else
                                   rectangle3.color="#af12fe"
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  D.winnerFlag2=0;
                                  if (D.dotsMode==1)
                              rectangle9.color="#ff0000"
                                  else
                                   rectangle9.color="#af12fe"
                              }
                              while(D.tempPlayer==9 && D.count<45)
                                  {D.count++;
                                  if(D.dotsMode==1)
                                      {

      var c1 = {x:0,y:0,a:0,b:0};
                                     c1=D.AIcoordinateGenerator();
                                    D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                     drawLine(c1.x,c1.y,c1.a,c1.b);

                                  }

                               else if(D.dotsMode==2)
                                  {
                                  var c = {x:0,y:0,a:0,b:0};

                                  c=D.AIcoordinateGenerator();
                                D.dotsCaller(c.x,c.y,c.a,c.b);
                                 drawLinereverse(c.x,c.y,c.a,c.b);



                              }

                              }

                          }


                   }
                      p1score.text = ""+D.count1;
                      p2score.text = ""+D.count2;
               }


               }

           }

           Rectangle {
               id: line10
               x: 315
               y: 173
               width: 83
               height: 15
               color: "#2c2c2c"
               opacity:0.1
               MouseArea {
                   id: maline10
                   x: 21
                   y: 0
                   width: 42
                   height: 15

                onClicked: {
                       enabled:false;
                      if(D.count<45 && D.dot[1][4][2]==0)
                          { if(D.tempPlayer==8)
                              {
                              line10.color = "#ff0000";
                              line10.opacity=1;
                          }

                                  else if(D.tempPlayer==9)
                                   {
                                  line10.color = "#af12fe";
                             line10.opacity=1;
                          }

                          if(D.playmode==1)//player vs player
                              {
                            D.dotsCaller(2,4,2,5)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle4.color="#ff0000"
                                      else
                                       rectangle4.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle4.color="#af12fe"
                                      else
                                       rectangle4.color="#ff0000"
                                  }
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag10=0;
                                      if (D.dotsMode==1)
                                  rectangle10.color="#ff0000"
                                      else
                                       rectangle10.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle10.color="#af12fe"
                                      else
                                       rectangle10.color="#ff0000"
                                  }
                              }



                          }
                          else if(D.playmode==2)//player vs cpu
                              {



                           D.dotsCaller(2,4,2,5)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  D.winnerFlag1=0;
                                  if (D.dotsMode==1)
                              rectangle4.color="#ff0000"
                                  else
                                   rectangle4.color="#af12fe"
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  D.winnerFlag2=0;
                                  if (D.dotsMode==1)
                              rectangle10.color="#ff0000"
                                  else
                                   rectangle10.color="#af12fe"
                              }
                              while(D.tempPlayer==9 && D.count<45)
                                  {D.count++;
                                  if(D.dotsMode==1)
                                      {

      var c1 = {x:0,y:0,a:0,b:0};
                                     c1=D.AIcoordinateGenerator();
                                    D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                     drawLine(c1.x,c1.y,c1.a,c1.b);

                                  }

                               else if(D.dotsMode==2)
                                  {
                                  var c = {x:0,y:0,a:0,b:0};

                                  c=D.AIcoordinateGenerator();
                                D.dotsCaller(c.x,c.y,c.a,c.b);
                                 drawLinereverse(c.x,c.y,c.a,c.b);



                              }

                              }

                          }


                   }
                      p1score.text = ""+D.count1;
                      p2score.text = ""+D.count2;
               }


               }

           }

           Rectangle {
               id: line11
               x: 383
               y: 173
               width: 83
               height: 15
               color: "#2c2c2c"
               opacity:0.1
               MouseArea {
                   id: maline11
                   x: 21
                   y: 0
                   width: 42
                   height: 15

                onClicked: {
                       enabled:false;
                      if(D.count<45 && D.dot[2][5][0]==0)
                          { if(D.tempPlayer==8)
                              {
                              line11.color = "#ff0000";
                              line11.opacity=1;
                          }

                                  else if(D.tempPlayer==9)
                                   {
                                  line11.color = "#af12fe";
                             line11.opacity=1;
                          }

                          if(D.playmode==1)//player vs player
                              {
                            D.dotsCaller(2,5,2,6)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle5.color="#ff0000"
                                      else
                                       rectangle5.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle5.color="#af12fe"
                                      else
                                       rectangle5.color="#ff0000"
                                  }
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle11.color="#ff0000"
                                      else
                                       rectangle11.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle11.color="#af12fe"
                                      else
                                       rectangle11.color="#ff0000"
                                  }
                              }



                          }
                          else if(D.playmode==2)//player vs cpu
                              {



                           D.dotsCaller(2,5,2,6)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  D.winnerFlag1=0;
                                  if (D.dotsMode==1)
                              rectangle5.color="#ff0000"
                                  else
                                   rectangle5.color="#af12fe"
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  D.winnerFlag11=0;
                                  if (D.dotsMode==1)
                              rectangle11.color="#ff0000"
                                  else
                                   rectangle11.color="#af12fe"
                              }
                              while(D.tempPlayer==9 && D.count<45)
                                  {D.count++;
                                  if(D.dotsMode==1)
                                      {
      var c1 = {x:0,y:0,a:0,b:0};

                                      c1=D.AIcoordinateGenerator();
                                    D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                     drawLine(c1.x,c1.y,c1.a,c1.b);

                                  }

                               else if(D.dotsMode==2)
                                  {
                                  var c = {x:0,y:0,a:0,b:0};

                                  c=D.AIcoordinateGenerator();
                                D.dotsCaller(c.x,c.y,c.a,c.b);
                                 drawLinereverse(c.x,c.y,c.a,c.b);



                              }

                              }

                          }


                   }
                      p1score.text = ""+D.count1;
                      p2score.text = ""+D.count2;
               }


               }

           }

           Rectangle {
               id: line12
               x: 455
               y: 173
               width: 83
               height: 15
               color: "#2c2c2c"
               opacity:0.1
               MouseArea {
                   id: maline12
                   x: 21
                   y: 0
                   width: 42
                   height: 15

                  onClicked: {
                       enabled:false;
                      if(D.count<45 && D.dot[2][6][0]==0)
                          { if(D.tempPlayer==8)
                              {
                              line12.color = "#ff0000";
                              line12.opacity=1;
                          }

                                  else if(D.tempPlayer==9)
                                   {
                                  line12.color = "#af12fe";
                             line12.opacity=1;
                          }

                          if(D.playmode==1)//player vs player
                              {
                            D.dotsCaller(2,6,2,7)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle6.color="#ff0000"
                                      else
                                       rectangle6.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)



                                      {
                                      D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle6.color="#af12fe"
                                      else
                                       rectangle6.color="#ff0000"
                                  }
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle12.color="#ff0000"
                                      else
                                       rectangle12.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle12.color="#af12fe"
                                      else
                                       rectangle12.color="#ff0000"
                                  }
                              }



                          }
                          else if(D.playmode==2)//player vs cpu
                              {



                           D.dotsCaller(2,6,2,7)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  D.winnerFlag1=0;
                                  if (D.dotsMode==1)
                              rectangle6.color="#ff0000"
                                  else
                                   rectangle6.color="#af12fe"
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  D.winnerFlag2=0;
                                  if (D.dotsMode==1)
                              rectangle12.color="#ff0000"
                                  else
                                   rectangle12.color="#af12fe"
                              }
                              while(D.tempPlayer==9 && D.count<45)
                                  {D.count++;
                                  if(D.dotsMode==1)
                                      {

      var c1 = {x:0,y:0,a:0,b:0};          c1=D.AIcoordinateGenerator();
                                    D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                     drawLine(c1.x,c1.y,c1.a,c1.b);

                                  }

                               else if(D.dotsMode==2)
                                  {
                                  var c = {x:0,y:0,a:0,b:0};

                                  c=D.AIcoordinateGenerator();
                                D.dotsCaller(c.x,c.y,c.a,c.b);
                                 drawLinereverse(c.x,c.y,c.a,c.b);



                              }

                              }

                          }


                   }
                      p1score.text = ""+D.count1;
                      p2score.text = ""+D.count2;
               }


               }

           }

           Rectangle {
               id: line13
               x: 104
               y: 242
               width: 83
               height: 15
               color: "#2c2c2c"
               opacity:0.1
               MouseArea {
                   id: maline13
                   x: 21
                   y: 0
                   width: 42
                   height: 15

                   onClicked: {
                       enabled:false;
                      if(D.count<45 && D.dot[2][1][2]==0)
                          { if(D.tempPlayer==8)
                              {
                              line13.color = "#ff0000";
                              line13.opacity=1;
                          }

                                  else if(D.tempPlayer==9)
                                   {
                                  line13.color = "#af12fe";
                             line13.opacity=1;
                          }

                          if(D.playmode==1)//player vs player
                              {
                            D.dotsCaller(3,1,3,2)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle7.color="#ff0000"
                                      else
                                       rectangle7.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle7.color="#af12fe"
                                      else
                                       rectangle7.color="#ff0000"
                                  }
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle13.color="#ff0000"
                                      else
                                       rectangle13.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle13.color="#af12fe"
                                      else
                                       rectangle13.color="#ff0000"
                                  }
                              }



                          }
                          else if(D.playmode==2)//player vs cpu
                              {



                           D.dotsCaller(3,1,3,2)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  D.winnerFlag1=0;
                                  if (D.dotsMode==1)
                              rectangle7.color="#ff0000"
                                  else
                                   rectangle7.color="#af12fe"
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  D.winnerFlag2=0;
                                  if (D.dotsMode==1)
                              rectangle13.color="#ff0000"
                                  else
                                   rectangle13.color="#af12fe"
                              }
                              while(D.tempPlayer==9 && D.count<45)
                                  {D.count++;
                                  if(D.dotsMode==1)
                                      {


                                 var c1 = {x:0,y:0,a:0,b:0};
                                      c1=D.AIcoordinateGenerator();
                                    D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                     drawLine(c1.x,c1.y,c1.a,c1.b);

                                  }

                               else if(D.dotsMode==2)
                                  {
                                  var c = {x:0,y:0,a:0,b:0};

                                  c=D.AIcoordinateGenerator();
                                D.dotsCaller(c.x,c.y,c.a,c.b);
                                 drawLinereverse(c.x,c.y,c.a,c.b);



                              }

                              }

                          }


                   }
                      p1score.text = ""+D.count1;
                      p2score.text = ""+D.count2;
               }


               }

           }

           Rectangle {
               id: line14
               x: 172
               y: 242
               width: 83
               height: 15
               color: "#2c2c2c"
               opacity:0.1
               MouseArea {
                   id: maline14
                   x: 21
                   y: 0
                   width: 42
                   height: 15

                  onClicked: {
                       enabled:false;
                      if(D.count<45 && D.dot[2][2][2]==0)
                          { if(D.tempPlayer==8)
                              {
                              line14.color = "#ff0000";
                              line14.opacity=1;
                          }

                                  else if(D.tempPlayer==9)
                                   {
                                  line14.color = "#af12fe";
                             line14.opacity=1;
                          }

                          if(D.playmode==1)//player vs player
                              {
                            D.dotsCaller(3,2,3,3)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle8.color="#ff0000"
                                      else
                                       rectangle8.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle8.color="#af12fe"
                                      else
                                       rectangle8.color="#ff0000"
                                  }
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle14.color="#ff0000"
                                      else
                                       rectangle14.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle14.color="#af12fe"
                                      else
                                       rectangle14.color="#ff0000"
                                  }
                              }



                          }
                          else if(D.playmode==2)//player vs cpu
                              {



                           D.dotsCaller(3,2,3,3)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  D.winnerFlag1=0;
                                  if (D.dotsMode==1)
                              rectangle8.color="#ff0000"
                                  else
                                   rectangle8.color="#af12fe"
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  D.winnerFlag2=0;
                                  if (D.dotsMode==1)
                              rectangle14.color="#ff0000"
                                  else
                                   rectangle14.color="#af12fe"
                              }
                              while(D.tempPlayer==9 && D.count<45)
                                  {D.count++;
                                  if(D.dotsMode==1)
                                      {

      var c1 = {x:0,y:0,a:0,b:0};
                                     c1=D.AIcoordinateGenerator();
                                    D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                     drawLine(c1.x,c1.y,c1.a,c1.b);

                                  }

                               else if(D.dotsMode==2)
                                  {
                                  var c = {x:0,y:0,a:0,b:0};

                                  c=D.AIcoordinateGenerator();
                                D.dotsCaller(c.x,c.y,c.a,c.b);
                                 drawLinereverse(c.x,c.y,c.a,c.b);



                              }

                              }

                          }


                   }
                      p1score.text = ""+D.count1;
                      p2score.text = ""+D.count2;
               }


               }

           }

           Rectangle {
               id: line15
               x: 241
               y: 242
               width: 83
               height: 15
               color: "#2c2c2c"
               opacity:0.1
               MouseArea {
                   id: maline15
                   x: 21
                   y: 0
                   width: 42
                   height: 15

                   onClicked: {
                       enabled:false;
                      if(D.count<45 && D.dot[2][3][2]==0)
                          { if(D.tempPlayer==8)
                              {
                              line15.color = "#ff0000";
                              line15.opacity=1;
                          }

                                  else if(D.tempPlayer==9)
                                   {
                                  line15.color = "#af12fe";
                             line15.opacity=1;
                          }

                          if(D.playmode==1)//player vs player
                              {
                            D.dotsCaller(3,3,3,4)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle9.color="#ff0000"
                                      else
                                       rectangle9.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle9.color="#af12fe"
                                      else
                                       rectangle9.color="#ff0000"
                                  }
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle15.color="#ff0000"
                                      else
                                       rectangle15.color="#af12fe"
                                      }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle15.color="#af12fe"
                                      else
                                       rectangle15.color="#ff0000"
                                  }
                              }



                          }
                          else if(D.playmode==2)//player vs cpu
                              {



                           D.dotsCaller(3,3,3,4)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  D.winnerFlag1=0;
                                  if (D.dotsMode==1)
                              rectangle9.color="#ff0000"
                                  else
                                   rectangle9.color="#af12fe"
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  D.winnerFlag2=0;
                                  if (D.dotsMode==1)
                              rectangle15.color="#ff0000"
                                  else
                                   rectangle15.color="#af12fe"
                              }
                              while(D.tempPlayer==9 && D.count<45)
                                  {D.count++;
                                  if(D.dotsMode==1)
                                      {

      var c1 = {x:0,y:0,a:0,b:0};
                                     c1=D.AIcoordinateGenerator();
                                    D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                     drawLine(c1.x,c1.y,c1.a,c1.b);

                                  }

                               else if(D.dotsMode==2)
                                  {
                                  var c = {x:0,y:0,a:0,b:0};

                                  c=D.AIcoordinateGenerator();
                                D.dotsCaller(c.x,c.y,c.a,c.b);
                                 drawLinereverse(c.x,c.y,c.a,c.b);



                              }

                              }

                          }


                   }
                      p1score.text = ""+D.count1;
                      p2score.text = ""+D.count2;
               }


               }

           }

           Rectangle {
               id: line16
               x: 315
               y: 242
               width: 83
               height: 15
               color: "#2c2c2c"
               opacity:0.1
               MouseArea {
                   id: maline16
                   x: 21
                   y: 0
                   width: 42
                   height: 15

                   onClicked: {
                       enabled:false;
                      if(D.count<45 && D.dot[2][4][2]==0)
                          { if(D.tempPlayer==8)
                              {
                              line16.color = "#ff0000";
                              line16.opacity=1;
                          }

                                  else if(D.tempPlayer==9)
                                   {
                                  line16.color = "#af12fe";
                             line16.opacity=1;
                          }

                          if(D.playmode==1)//player vs player
                              {
                            D.dotsCaller(3,4,3,5)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle10.color="#ff0000"
                                      else
                                       rectangle10.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle10.color="#af12fe"
                                      else
                                       rectangle10.color="#ff0000"
                                  }
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle16.color="#ff0000"
                                      else
                                       rectangle16.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle16.color="#af12fe"
                                      else
                                       rectangle16.color="#ff0000"
                                  }
                              }



                          }
                          else if(D.playmode==2)//player vs cpu
                              {



                           D.dotsCaller(3,4,3,5)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  D.winnerFlag1=0;
                                  if (D.dotsMode==1)
                              rectangle10.color="#ff0000"
                                  else
                                   rectangle10.color="#af12fe"
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  D.winnerFlag2=0;
                                  if (D.dotsMode==1)
                              rectangle16.color="#ff0000"
                                  else
                                   rectangle16.color="#af12fe"
                              }
                              while(D.tempPlayer==9 && D.count<45)
                                  {D.count++;
                                  if(D.dotsMode==1)
                                      {

      var c1 = {x:0,y:0,a:0,b:0};
                                     c1=D.AIcoordinateGenerator();
                                    D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                     drawLine(c1.x,c1.y,c1.a,c1.b);

                                  }

                               else if(D.dotsMode==2)
                                  {
                                  var c = {x:0,y:0,a:0,b:0};

                                  c=D.AIcoordinateGenerator();
                                D.dotsCaller(c.x,c.y,c.a,c.b);
                                 drawLinereverse(c.x,c.y,c.a,c.b);



                              }

                              }

                          }


                   }
                      p1score.text = ""+D.count1;
                      p2score.text = ""+D.count2;
               }


               }

           }

           Rectangle {
               id: line17
               x: 383
               y: 242
               width: 83
               height: 15
               color: "#2c2c2c"
               opacity:0.1
               MouseArea {
                   id: maline17
                   x: 21
                   y: 0
                   width: 42
                   height: 15

                onClicked: {
                       enabled:false;
                      if(D.count<45 && D.dot[2][5][2]==0)
                          { if(D.tempPlayer==8)
                              {
                              line17.color = "#ff0000";
                              line17.opacity=1;
                          }

                                  else if(D.tempPlayer==9)
                                   {
                                  line17.color = "#af12fe";
                             line17.opacity=1;
                          }

                          if(D.playmode==1)//player vs player
                              {
                            D.dotsCaller(3,5,3,6)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle11.color="#ff0000"
                                      else
                                       rectangle11.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle11.color="#af12fe"
                                      else
                                       rectangle11.color="#ff0000"
                                  }
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle17.color="#ff0000"
                                      else
                                       rectangle17.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle17.color="#af12fe"
                                      else
                                       rectangle17.color="#ff0000"
                                  }
                              }



                          }
                          else if(D.playmode==2)//player vs cpu
                              {



                           D.dotsCaller(3,5,3,6)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  D.winnerFlag11=0;
                                  if (D.dotsMode==1)
                              rectangle11.color="#ff0000"
                                  else
                                   rectangle11.color="#af12fe"
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  D.winnerFlag2=0;
                                  if (D.dotsMode==1)
                              rectangle17.color="#ff0000"
                                  else
                                   rectangle17.color="#af12fe"
                              }
                              while(D.tempPlayer==9 && D.count<45)
                                  {D.count++;
                                  if(D.dotsMode==1)
                                      {
      var c1 = {x:0,y:0,a:0,b:0};

                                      c1=D.AIcoordinateGenerator();
                                    D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                     drawLine(c1.x,c1.y,c1.a,c1.b);

                                  }

                               else if(D.dotsMode==2)
                                  {
                                  var c = {x:0,y:0,a:0,b:0};

                                  c=D.AIcoordinateGenerator();
                                D.dotsCaller(c.x,c.y,c.a,c.b);
                                 drawLinereverse(c.x,c.y,c.a,c.b);



                              }

                              }

                          }


                   }
                      p1score.text = ""+D.count1;
                      p2score.text = ""+D.count2;
               }


               }

           }

           Rectangle {
               id: line18
               x: 455
               y: 242
               width: 83
               height: 15
               color: "#2c2c2c"
               opacity:0.1
               MouseArea {
                   id: maline18
                   x: 21
                   y: 0
                   width: 42
                   height: 15

                 onClicked: {
                       enabled:false;
                      if(D.count<45 && D.dot[2][6][2]==0)
                          { if(D.tempPlayer==8)
                              {
                              line18.color = "#ff0000";
                              line18.opacity=1;
                          }

                                  else if(D.tempPlayer==9)
                                   {
                                  line18.color = "#af12fe";
                             line18.opacity=1;
                          }

                          if(D.playmode==1)//player vs player
                              {
                            D.dotsCaller(3,6,3,7)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle12.color="#ff0000"
                                      else
                                       rectangle12.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag1=0;
                                      if (D.dotsMode==1)
                                  rectangle12.color="#af12fe"
                                      else
                                       rectangle12.color="#ff0000"
                                  }
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  if(D.tempPlayer==8)
                                  {D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle18.color="#ff0000"
                                      else
                                       rectangle18.color="#af12fe"
                                  }
                                  else if(D.tempPlayer==9)
                                      {
                                      D.winnerFlag2=0;
                                      if (D.dotsMode==1)
                                  rectangle18.color="#af12fe"
                                      else
                                       rectangle18.color="#ff0000"
                                  }
                              }



                          }
                          else if(D.playmode==2)//player vs cpu
                              {



                           D.dotsCaller(3,6,3,7)
                              D.count++;
                              if(D.winnerFlag1==1)
                                  {
                                  D.winnerFlag1=0;
                                  if (D.dotsMode==1)
                              rectangle12.color="#ff0000"
                                  else
                                   rectangle12.color="#af12fe"
                              }
                              if(D.winnerFlag2==1)
                                  {
                                  D.winnerFlag2=0;
                                  if (D.dotsMode==1)
                              rectangle18.color="#ff0000"
                                  else
                                   rectangle18.color="#af12fe"
                              }
                              while(D.tempPlayer==9 && D.count<45)
                                  {D.count++;
                                  if(D.dotsMode==1)
                                      {
      var c1 = {x:0,y:0,a:0,b:0};

                                     c1=D.AIcoordinateGenerator();
                                    D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                     drawLine(c1.x,c1.y,c1.a,c1.b);

                                  }

                               else if(D.dotsMode==2)
                                  {
                                  var c = {x:0,y:0,a:0,b:0};

                                  c=D.AIcoordinateGenerator();
                                D.dotsCaller(c.x,c.y,c.a,c.b);
                                 drawLinereverse(c.x,c.y,c.a,c.b);



                              }

                              }

                          }


                   }
                      p1score.text = ""+D.count1;
                      p2score.text = ""+D.count2;
               }


               }

           }
        //////////////////

        Rectangle {
            id: line19
            x: 104
            y: 314
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            MouseArea {
                id: maline19
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[3][1][2]==0)
                       { if(D.tempPlayer==8)
                           {
                           line19.color = "#ff0000";
                           line19.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               line19.color = "#af12fe";
                          line19.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(4,1,4,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle13.color="#ff0000"
                                   else
                                    rectangle13.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle13.color="#af12fe"
                                   else
                                    rectangle13.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle13.color="#ff0000"
                                   else
                                    rectangle13.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle13.color="#af12fe"
                                   else
                                    rectangle13.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(4,1,4,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if (D.dotsMode==1)
                           rectangle13.color="#ff0000"
                               else
                                rectangle13.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if (D.dotsMode==1)
                           rectangle13.color="#ff0000"
                               else
                                rectangle13.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                               c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);




                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }


            }



        }

        Rectangle {
            id: line20
            x: 172
            y: 314
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity:0.1
            MouseArea {
                id: maline20
                x: 21
                y: 0
                width: 42
                height: 15
                  onClicked: {
                      enabled:false;

                   if(D.count<45 && D.dot[3][2][2]==0)
                       { if(D.tempPlayer==8)
                           {
                           line20.color = "#ff0000";
                           line20.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               line20.color = "#af12fe";
                          line20.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(4,2,4,3)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle14.color="#ff0000"
                                   else
                                    rectangle14.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if (D.dotsMode==1)
                               rectangle14.color="#af12fe"
                                   else
                                    rectangle14.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle14.color="#ff0000"
                                   else
                                    rectangle14.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if (D.dotsMode==1)
                               rectangle14.color="#af12fe"
                                   else
                                    rectangle14.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(4,2,4,3)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if (D.dotsMode==1)
                           rectangle14.color="#ff0000"
                               else
                                rectangle14.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if (D.dotsMode==1)
                           rectangle14.color="#ff0000"
                               else
                                rectangle14.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                 c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);



                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }


            }

        }

        Rectangle {
            id: line21
            x: 241
            y: 314
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity:0.1
            MouseArea {
                id: maline21
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {

                    enabled:false;
                 if(D.count<45 && D.dot[3][3][2]==0)
                     { if(D.tempPlayer==8)
                         {
                         line21.color = "#ff0000";
                         line21.opacity=1;
                     }

                             else if(D.tempPlayer==9)
                              {
                             line21.color = "#af12fe";
                        line21.opacity=1;
                     }

                     if(D.playmode==1)//player vs player
                         {
                       D.dotsCaller(4,3,4,4)
                         D.count++;
                         if(D.winnerFlag1==1)
                             {
                             if(D.tempPlayer==8)
                             {D.winnerFlag1=0;
                                 if (D.dotsMode==1)
                             rectangle15.color="#ff0000"
                                 else
                                  rectangle15.color="#af12fe"
                             }
                             else if(D.tempPlayer==9)
                                 {
                                 D.winnerFlag1=0;
                                 if (D.dotsMode==1)
                             rectangle15.color="#af12fe"
                                 else
                                  rectangle15.color="#ff0000"
                             }
                         }
                         if(D.winnerFlag2==1)
                             {
                             if(D.tempPlayer==8)
                             {D.winnerFlag2=0;
                                 if (D.dotsMode==1)
                             rectangle15.color="#ff0000"
                                 else
                                  rectangle15.color="#af12fe"
                             }
                             else if(D.tempPlayer==9)
                                 {
                                 D.winnerFlag2=0;
                                 if (D.dotsMode==1)
                             rectangle15.color="#af12fe"
                                 else
                                  rectangle15.color="#ff0000"
                             }
                         }



                     }
                     else if(D.playmode==2)//player vs cpu
                         {



                      D.dotsCaller(4,3,4,4)
                         D.count++;
                         if(D.winnerFlag1==1)
                             {
                             D.winnerFlag1=0;
                             if (D.dotsMode==1)
                         rectangle15.color="#ff0000"
                             else
                              rectangle15.color="#af12fe"
                         }
                         if(D.winnerFlag2==1)
                             {
                             D.winnerFlag2=0;
                             if (D.dotsMode==1)
                         rectangle15.color="#ff0000"
                             else
                              rectangle15.color="#af12fe"
                         }
                         while(D.tempPlayer==9 && D.count<45)
                             {D.count++;
                             if(D.dotsMode==1)
                                 {

      var c1 = {x:0,y:0,a:0,b:0};
                              c1=D.AIcoordinateGenerator();
                               D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                drawLine(c1.x,c1.y,c1.a,c1.b);

                             }

                          else if(D.dotsMode==2)
                             {
                             var c = {x:0,y:0,a:0,b:0};

                             c=D.AIcoordinateGenerator();
                           D.dotsCaller(c.x,c.y,c.a,c.b);
                            drawLinereverse(c.x,c.y,c.a,c.b);




                         }

                         }

                     }


              }
                 p1score.text = ""+D.count1;
                 p2score.text = ""+D.count2;
          }

            }

        }

        Rectangle {
            id: line22
            x: 315
            y: 314
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            MouseArea {
                id: maline22
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {

                    enabled:false;
                 if(D.count<45 && D.dot[3][4][2]==0)
                     { if(D.tempPlayer==8)
                         {
                         line22.color = "#ff0000";
                         line22.opacity=1;
                     }

                             else if(D.tempPlayer==9)
                              {
                             line22.color = "#af12fe";
                        line22.opacity=1;
                     }

                     if(D.playmode==1)//player vs player
                         {
                       D.dotsCaller(4,4,4,5)
                         D.count++;
                         if(D.winnerFlag1==1)
                             {
                             if(D.tempPlayer==8)
                             {D.winnerFlag1=0;
                                 if (D.dotsMode==1)
                             rectangle16.color="#ff0000"
                                 else
                                  rectangle16.color="#af12fe"
                             }
                             else if(D.tempPlayer==9)
                                 {
                                 D.winnerFlag1=0;
                                 if (D.dotsMode==1)
                             rectangle16.color="#af12fe"
                                 else
                                  rectangle16.color="#ff0000"
                             }
                         }
                         if(D.winnerFlag2==1)
                             {
                             if(D.tempPlayer==8)
                             {D.winnerFlag2=0;
                                 if (D.dotsMode==1)
                             rectangle16.color="#ff0000"
                                 else
                                  rectangle16.color="#af12fe"
                             }
                             else if(D.tempPlayer==9)
                                 {
                                 D.winnerFlag2=0;
                                 if (D.dotsMode==1)
                             rectangle16.color="#af12fe"
                                 else
                                  rectangle16.color="#ff0000"
                             }
                         }



                     }
                     else if(D.playmode==2)//player vs cpu
                         {



                      D.dotsCaller(4,4,4,5)
                         D.count++;
                         if(D.winnerFlag1==1)
                             {
                             D.winnerFlag1=0;
                             if (D.dotsMode==1)
                         rectangle16.color="#ff0000"
                             else
                              rectangle16.color="#af12fe"
                         }
                         if(D.winnerFlag2==1)
                             {
                             D.winnerFlag2=0;
                             if (D.dotsMode==1)
                         rectangle16.color="#ff0000"
                             else
                              rectangle16.color="#af12fe"
                         }
                         while(D.tempPlayer==9 && D.count<45)
                             {D.count++;
                             if(D.dotsMode==1)
                                 {

      var c1 = {x:0,y:0,a:0,b:0};
                                c1=D.AIcoordinateGenerator();
                               D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                drawLine(c1.x,c1.y,c1.a,c1.b);

                             }

                          else if(D.dotsMode==2)
                             {
                             var c = {x:0,y:0,a:0,b:0};

                             c=D.AIcoordinateGenerator();
                           D.dotsCaller(c.x,c.y,c.a,c.b);
                            drawLinereverse(c.x,c.y,c.a,c.b);



                         }

                         }

                     }


              }
                 p1score.text = ""+D.count1;
                 p2score.text = ""+D.count2;
          }

            }

        }

        Rectangle {
            id: line23
            x: 383
            y: 314
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            MouseArea {
                id: maline23
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;

                 if(D.count<45 && D.dot[3][5][2]==0)
                     { if(D.tempPlayer==8)
                         {
                         line23.color = "#ff0000";
                         line23.opacity=1;
                     }

                             else if(D.tempPlayer==9)
                              {
                             line23.color = "#af12fe";
                        line23.opacity=1;
                     }

                     if(D.playmode==1)//player vs player
                         {
                       D.dotsCaller(4,5,4,6)
                         D.count++;
                         if(D.winnerFlag1==1)
                             {
                             if(D.tempPlayer==8)
                             {D.winnerFlag1=0;
                                 if (D.dotsMode==1)
                             rectangle17.color="#ff0000"
                                 else
                                  rectangle17.color="#af12fe"
                             }
                             else if(D.tempPlayer==9)
                                 {
                                 D.winnerFlag1=0;
                                 if (D.dotsMode==1)
                             rectangle17.color="#af12fe"
                                 else
                                  rectangle17.color="#ff0000"
                             }
                         }
                         if(D.winnerFlag2==1)
                             {
                             if(D.tempPlayer==8)
                             {D.winnerFlag2=0;
                                 if (D.dotsMode==1)
                             rectangle17.color="#ff0000"
                                 else
                                  rectangle17.color="#af12fe"
                             }
                             else if(D.tempPlayer==9)
                                 {
                                 D.winnerFlag2=0;
                                 if (D.dotsMode==1)
                             rectangle17.color="#af12fe"
                                 else
                                  rectangle17.color="#ff0000"
                             }
                         }



                     }
                     else if(D.playmode==2)//player vs cpu
                         {



                      D.dotsCaller(4,5,4,6)
                         D.count++;
                         if(D.winnerFlag1==1)
                             {
                             D.winnerFlag1=0;
                             if (D.dotsMode==1)
                         rectangle17.color="#ff0000"
                             else
                              rectangle17.color="#af12fe"
                         }
                         if(D.winnerFlag2==1)
                             {
                             D.winnerFlag2=0;
                             if (D.dotsMode==1)
                         rectangle17.color="#ff0000"
                             else
                              rectangle17.color="#af12fe"
                         }
                         while(D.tempPlayer==9 && D.count<45)
                             {D.count++;
                             if(D.dotsMode==1)
                                 {
      var c1 = {x:0,y:0,a:0,b:0};

                             c1=D.AIcoordinateGenerator();
                               D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                drawLine(c1.x,c1.y,c1.a,c1.b);

                             }

                          else if(D.dotsMode==2)
                             {
                             var c = {x:0,y:0,a:0,b:0};

                             c=D.AIcoordinateGenerator();
                           D.dotsCaller(c.x,c.y,c.a,c.b);
                            drawLinereverse(c.x,c.y,c.a,c.b);



                         }

                         }

                     }


              }
                 p1score.text = ""+D.count1;
                 p2score.text = ""+D.count2;
          }

            }

        }

        Rectangle {
            id: line24
            x: 455
            y: 314
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            MouseArea {
                id: maline24
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {

                    enabled:false;
                 if(D.count<45 && D.dot[3][6][2]==0)
                     { if(D.tempPlayer==8)
                         {
                         line24.color = "#ff0000";
                         line24.opacity=1;
                     }

                             else if(D.tempPlayer==9)
                              {
                             line24.color = "#af12fe";
                        line24.opacity=1;
                     }

                     if(D.playmode==1)//player vs player
                         {
                       D.dotsCaller(4,6,4,7)
                         D.count++;
                         if(D.winnerFlag1==1)
                             {
                             if(D.tempPlayer==8)
                             {D.winnerFlag1=0;
                                 if (D.dotsMode==1)
                             rectangle18.color="#ff0000"
                                 else
                                  rectangle18.color="#af12fe"
                             }
                             else if(D.tempPlayer==9)
                                 {
                                 D.winnerFlag1=0;
                                 if (D.dotsMode==1)
                             rectangle18.color="#af12fe"
                                 else
                                  rectangle18.color="#ff0000"
                             }
                         }
                         if(D.winnerFlag2==1)
                             {
                             if(D.tempPlayer==8)
                             {D.winnerFlag2=0;
                                 if (D.dotsMode==1)
                             rectangle18.color="#ff0000"
                                 else
                                  rectangle18.color="#af12fe"
                             }
                             else if(D.tempPlayer==9)
                                 {
                                 D.winnerFlag2=0;
                                 if (D.dotsMode==1)
                             rectangle18.color="#af12fe"
                                 else
                                  rectangle18.color="#ff0000"
                             }
                         }



                     }
                     else if(D.playmode==2)//player vs cpu
                         {



                      D.dotsCaller(4,6,4,7)
                         D.count++;
                         if(D.winnerFlag1==1)
                             {
                             D.winnerFlag1=0;
                             if (D.dotsMode==1)
                         rectangle18.color="#ff0000"
                             else
                              rectangle18.color="#af12fe"
                         }
                         if(D.winnerFlag2==1)
                             {
                             D.winnerFlag2=0;
                             if (D.dotsMode==1)
                         rectangle18.color="#ff0000"
                             else
                              rectangle18.color="#af12fe"
                         }
                         while(D.tempPlayer==9 && D.count<45)
                             {D.count++;
                             if(D.dotsMode==1)
                                 {
       var u = {x:0,y:0,a:0,b:0};

                               var u=D.AIcoordinateGenerator();
                               D.dotsCaller(u.x,u.y,u.a,u.b);

                                drawLine(u.x,u.y,u.a,u.b);

                             }

                          else if(D.dotsMode==2)
                             {
                             var c = {x:0,y:0,a:0,b:0};

                             c=D.AIcoordinateGenerator();
                           D.dotsCaller(c.x,c.y,c.a,c.b);
                            drawLinereverse(c.x,c.y,c.a,c.b);




                         }

                         }

                     }


              }
                 p1score.text = ""+D.count1;
                 p2score.text = ""+D.count2;
          }

            }

        }

        Rectangle {
            id: vline1
            x: 67
            y: 139
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1;
            MouseArea {
                id: vmaline1
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][1][3]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline1.color = "#ff0000";
                           vline1.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline1.color = "#af12fe";
                          vline1.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,1,2,1)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle1.color="#ff0000"
                               else
                                   rectangle1.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle1.color="#af12fe"
                                   else
                                       rectangle1.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle1.color="#ff0000"
                                   else
                                       rectangle1.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle1.color="#af12fe"
                                   else
                                       rectangle1.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,1,2,1)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle1.color="#ff0000"
                               else
                                   rectangle1.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle1.color="#ff0000"
                               else
                                   rectangle1.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                            c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }


            }

        }

        Rectangle {
            id: vline2
            x: 138
            y: 140
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            rotation: 90
            MouseArea {
                id: vmaline2
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][1][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline2.color = "#ff0000";
                           vline2.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline2.color = "#af12fe";
                          vline2.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,2,2,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle2.color="#ff0000"
                                   else
                                       rectangle2.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle2.color="#af12fe"
                                   else
                                       rectangle2.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle1.color="#ff0000"
                                   else
                                       rectangle1.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle1.color="#af12fe"
                                   else
                                       rectangle1.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,2,2,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle2.color="#ff0000"
                               else
                                   rectangle2.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle1.color="#ff0000"
                               else
                                   rectangle1.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);




                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }


            }

        }

        Rectangle {
            id: vline3
            x: 207
            y: 141
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1
            MouseArea {
                id: vmaline3
                x: 21
                y: 0
                width: 42
                height: 15
                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][2][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline3.color = "#ff0000";
                           vline3.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline3.color = "#af12fe";
                          vline3.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,3,2,3)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle3.color="#ff0000"
                                   else
                                       rectangle3.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle3.color="#af12fe"
                                   else
                                       rectangle3.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle2.color="#ff0000"
                                   else
                                       rectangle2.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle2.color="#af12fe"
                                   else
                                       rectangle2.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,3,2,3)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle3.color="#ff0000"
                               else
                                   rectangle3.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle2.color="#ff0000"
                               else
                                   rectangle2.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                 c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }


            }

        }

        Rectangle {
            id: vline4
            x: 279
            y: 139
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            rotation: 90
            MouseArea {
                id: vmaline4
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][3][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline4.color = "#ff0000";
                           vline4.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline4.color = "#af12fe";
                          vline4.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                           console.log("playermode 1")
                         D.dotsCaller(1,4,2,4)
                           console.log("dots caller called and returned")
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               console.log("dfhfh1")
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle4.color="#ff0000"
                                   else
                                       rectangle4.color="#af12fe"
                                   console.log("dfhfh")
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   console.log("dfhfh2")
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle4.color="#af12fe"
                                   else
                                       rectangle4.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle3.color="#ff0000"
                                   else
                                       rectangle3.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle3.color="#af12fe"
                                   else
                                       rectangle3.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,4,2,4)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle4.color="#ff0000"
                               else
                                   rectangle4.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle3.color="#ff0000"
                               else
                                   rectangle3.color="#af12fe"
                               //console.log("dfhfh")
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                  c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }




            }

        }

        Rectangle {
            id: vline5
            x: 349
            y: 136
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1
            MouseArea {
                id: vmaline5
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][4][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline5.color = "#ff0000";
                           vline5.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline5.color = "#af12fe";
                               vline5.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,5,2,5)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle5.color="#ff0000"
                                   else
                                       rectangle5.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle5.color="#af12fe"
                                   else
                                       rectangle5.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle4.color="#ff0000"
                                   else
                                       rectangle4.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle4.color="#af12fe"
                                   else
                                       rectangle4.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,5,2,5)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle5.color="#ff0000"
                               else
                                   rectangle5.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle4.color="#ff0000"
                               else
                                   rectangle4.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {
      var c1 = {x:0,y:0,a:0,b:0};

                               c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline6
            x: 417
            y: 139
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1

            MouseArea {
                id: vmaline6
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][5][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline6.color = "#ff0000";
                           vline6.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline6.color = "#af12fe";
                               vline6.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,6,2,6)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle6.color="#ff0000"
                                   else
                                       rectangle6.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle6.color="#af12fe"
                                   else
                                       rectangle6.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle5.color="#ff0000"
                                   else
                                       rectangle5.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle5.color="#af12fe"
                                   else
                                       rectangle5.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,6,2,6)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle6.color="#ff0000"
                               else
                                   rectangle6.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle5.color="#ff0000"
                               else
                                   rectangle5.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {
      var c1 = {x:0,y:0,a:0,b:0};

                              c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline7
            x: 489
            y: 136
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1
            MouseArea {
                id: vmaline7
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[1][6][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline7.color = "#ff0000";
                           vline7.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline7.color = "#af12fe";
                               vline7.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(1,7,2,7)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle6.color="#ff0000"
                                   else
                                       rectangle6.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                  if(D.dotsMode==1)
                                   rectangle6.color="#af12fe"
                               else
                                   rectangle6.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle6.color="#ff0000"
                                   else
                                       rectangle6.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle6.color="#af12fe"
                                   else
                                       rectangle6.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(1,7,2,7)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle6.color="#ff0000"
                               else
                                   rectangle6.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle6.color="#ff0000"
                               else
                                   rectangle6.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {
      var c1 = {x:0,y:0,a:0,b:0};

                               c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline8
            x: 67
            y: 209
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1
            MouseArea {
                id: vmaline8
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[2][1][3]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline8.color = "#ff0000";
                           vline8.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline8.color = "#af12fe";
                               vline8.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(2,1,3,1)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle7.color="#ff0000"
                                   else
                                       rectangle7.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle7.color="#af12fe"
                                   else
                                       rectangle7.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle7.color="#ff0000"
                                   else
                                       rectangle7.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle7.color="#af12fe"
                                   else
                                       rectangle7.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(2,1,3,1)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle7.color="#ff0000"
                               else
                                   rectangle7.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle7.color="#ff0000"
                               else
                                   rectangle7.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                               c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline9
            x: 138
            y: 209
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1

            MouseArea {
                id: vmaline9
                x: 21
                y: 0
                width: 42
                height: 15
                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[2][1][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline9.color = "#ff0000";
                           vline9.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline9.color = "#af12fe";
                               vline9.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(2,2,3,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle8.color="#ff0000"
                                   else
                                       rectangle8.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle8.color="#af12fe"
                                   else
                                       rectangle8.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle7.color="#ff0000"
                                   else
                                       rectangle7.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle7.color="#af12fe"
                                   else
                                       rectangle7.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(2,2,3,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle8.color="#ff0000"
                               else
                                   rectangle8.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle7.color="#ff0000"
                               else
                                   rectangle7.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {


                                var c1 = {x:0,y:0,a:0,b:0};
                                   c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }


            }

        }

        Rectangle {
            id: vline10
            x: 207
            y: 209
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1
            MouseArea {
                id: vmaline10
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[2][2][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline10.color = "#ff0000";
                           vline10.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline10.color = "#af12fe";
                               vline10.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(2,3,3,3)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle9.color="#ff0000"
                                   else
                                       rectangle9.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle9.color="#af12fe"
                                   else
                                       rectangle9.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle8.color="#ff0000"
                                   else
                                       rectangle8.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle8.color="#af12fe"
                                   else
                                       rectangle8.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(2,3,3,3)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle9.color="#ff0000"
                               else
                                   rectangle9.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle8.color="#ff0000"
                               else
                                   rectangle8.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {
      var c1 = {x:0,y:0,a:0,b:0};

                                 c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline11
            x: 279
            y: 209
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            rotation: 90
            MouseArea {
                id: vmaline11
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[2][3][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline11.color = "#ff0000";
                           vline11.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline11.color = "#af12fe";
                               vline11.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(2,4,3,4)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle10.color="#ff0000"
                                   else
                                       rectangle10.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle10.color="#af12fe"
                                   else
                                       rectangle10.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle9.color="#ff0000"
                                   else
                                       rectangle9.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle9.color="#af12fe"
                                   else
                                       rectangle9.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(2,4,3,4)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle10.color="#ff0000"
                               else
                                   rectangle10.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle9.color="#ff0000"
                               else
                                   rectangle9.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                               c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline12
            x: 349
            y: 209
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1;
            rotation: 90;
            MouseArea {
                id: vmaline12
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[2][4][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline12.color = "#ff0000";
                           vline12.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline12.color = "#af12fe";
                               vline12.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(2,5,3,5)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle11.color="#ff0000"
                                   else
                                       rectangle11.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle11.color="#af12fe"
                                   else
                                       rectangle11.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle10.color="#ff0000"
                                   else
                                       rectangle10.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle10.color="#af12fe"
                                   else
                                       rectangle10.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(2,5,3,5)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle11.color="#ff0000"
                               else
                                   rectangle11.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle10.color="#ff0000"
                               else
                                   rectangle10.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {
      var c1 = {x:0,y:0,a:0,b:0};

                                  c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline13
            x: 417
            y: 209
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1
            MouseArea {
                id: vmaline13
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[2][5][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline13.color = "#ff0000";
                           vline13.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline13.color = "#af12fe";
                               vline13.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(2,6,3,6)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle12.color="#ff0000"
                                   else
                                       rectangle12color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle12.color="#af12fe"
                                   else
                                       rectangle12.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle11.color="#ff0000"
                                   else
                                       rectangle11.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle11.color="#af12fe"
                                   else
                                       rectangle11.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(2,6,3,6)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle12.color="#ff0000"
                               else
                                   rectangle12.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle11.color="#ff0000"
                               else
                                   rectangle11.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline14
            x: 489
            y: 209
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1
            MouseArea {
                id: vmaline14
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[2][6][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline14.color = "#ff0000";
                           vline14.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline14.color = "#af12fe";
                               vline14.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(2,7,3,7)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle12.color="#ff0000"
                                   else
                                       rectangle12.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle12.color="#af12fe"
                                   else
                                       rectangle12.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle12.color="#ff0000"
                                   else
                                       rectangle12.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle12.color="#af12fe"
                                   else
                                       rectangle12.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(2,7,3,7)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle12.color="#ff0000"
                               else
                                   rectangle12.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle12.color="#af12fe"
                               else
                                   rectangle12.color="#ff0000"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                 c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline15
            x: 67
            y: 280
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1
            MouseArea {
                id: vmaline15
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[3][1][3]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline15.color = "#ff0000";
                           vline15.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline15.color = "#af12fe";
                               vline15.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(3,1,4,1)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle13.color="#ff0000"
                                   else
                                       rectangle13.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle13.color="#af12fe"
                                   else
                                       rectangle13.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle13.color="#ff0000"
                                   else
                                       rectangle13.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle13.color="#af12fe"
                                   else
                                       rectangle13.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(3,1,4,1)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle13.color="#ff0000"
                               else
                                   rectangle13.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle13.color="#ff0000"
                               else
                                   rectangle13.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                               c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }


            }

        }

        Rectangle {
            id: vline16
            x: 138
            y: 280
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1
            MouseArea {
                id: vmaline16
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[3][1][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline16.color = "#ff0000";
                           vline16.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline16.color = "#af12fe";
                               vline16.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(3,2,4,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle14.color="#ff0000"
                                   else
                                       rectangle14.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle14.color="#af12fe"
                                   else
                                       rectangle14.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle13.color="#ff0000"
                                   else
                                       rectangle13.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle13.color="#af12fe"
                                   else
                                       rectangle13.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(3,2,4,2)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle14.color="#ff0000"
                               else
                                   rectangle14.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle13.color="#ff0000"
                               else
                                   rectangle13.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                               c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline17
            x: 207
            y: 280
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            rotation: 90
            MouseArea {
                id: vmaline17
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[3][2][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline17.color = "#ff0000";
                           vline17.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline17.color = "#af12fe";
                               vline17.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(3,3,4,3)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle15.color="#ff0000"
                                   else
                                       rectangle15.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle15.color="#af12fe"
                                   else
                                       rectangle15.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle14.color="#ff0000"
                                   else
                                       rectangle14.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle14.color="#af12fe"
                                   else
                                       rectangle14.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(3,3,4,3)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle15.color="#ff0000"
                               else
                                   rectangle15.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle14.color="#ff0000"
                               else
                                   rectangle14.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                  c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline18
            x: 279
            y: 280
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            rotation: 90
            MouseArea {
                id: vmaline18
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[3][3][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline18.color = "#ff0000";
                           vline18.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline18.color = "#af12fe";
                               vline18.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(3,4,4,4)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle16.color="#ff0000"
                                   else
                                       rectangle16.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle16.color="#af12fe"
                                   else
                                       rectangle16.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle15.color="#ff0000"
                                   else
                                       rectangle15.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle15.color="#af12fe"
                                   else
                                       rectangle15.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(3,4,4,4)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle16.color="#ff0000"
                               else
                                   rectangle16.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle15.color="#ff0000"
                               else
                                   rectangle15.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {
      var c1 = {x:0,y:0,a:0,b:0};

                               c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }


            }

        }

        Rectangle {
            id: vline19
            x: 349
            y: 280
            width: 83
            height: 15
            color: "#2c2c2c"
            opacity: 0.1
            rotation: 90

            MouseArea {
                id: vmaline19
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[3][4][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline19.color = "#ff0000";
                           vline19.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline19.color = "#af12fe";
                               vline19.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(3,5,4,5)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle17.color="#ff0000"
                                   else
                                       rectangle17.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle17.color="#af12fe"
                                   else
                                       rectangle17.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle16.color="#ff0000"
                                   else
                                       rectangle16.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle16.color="#af12fe"
                                   else
                                       rectangle16.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(3,5,4,5)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle17.color="#ff0000"
                               else
                                   rectangle17.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle16.color="#ff0000"
                               else
                                   rectangle16.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {
      var c1 = {x:0,y:0,a:0,b:0};

                                 c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline20
            x: 417
            y: 280
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation:90
            opacity: 0.1
            MouseArea {
                id: vmaline20
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[3][5][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline20.color = "#ff0000";
                           vline20.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline20.color = "#af12fe";
                               vline20.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(3,6,4,6)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle18.color="#ff0000"
                                   else
                                       rectangle18.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle18.color="#af12fe"
                                   else
                                       rectangle18.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle17.color="#ff0000"
                                   else
                                       rectangle17.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle17.color="#af12fe"
                                   else
                                       rectangle17.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(3,6,4,6)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle18.color="#ff0000"
                               else
                                   rectangle18.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle17.color="#ff0000"
                               else
                                   rectangle17.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {

      var c1 = {x:0,y:0,a:0,b:0};
                                 c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGeneratorReverse();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }
                   p1score.text = ""+D.count1;
                   p2score.text = ""+D.count2;
            }

            }

        }

        Rectangle {
            id: vline21
            x: 489
            y: 280
            width: 83
            height: 15
            color: "#2c2c2c"
            rotation: 90
            opacity: 0.1
            MouseArea {
                id: vmaline21
                x: 21
                y: 0
                width: 42
                height: 15

                onClicked: {
                    enabled:false;
                   if(D.count<45 && D.dot[3][6][1]==0)
                       { if(D.tempPlayer==8)
                           {
                           vline21.color = "#ff0000";
                           vline21.opacity=1;
                       }

                               else if(D.tempPlayer==9)
                                {
                               vline21.color = "#af12fe";
                               vline21.opacity=1;
                       }

                       if(D.playmode==1)//player vs player
                           {
                         D.dotsCaller(3,7,4,7)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle18.color="#ff0000"
                                   else
                                       rectangle18.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag1=0;
                                   if(D.dotsMode==1)
                                       rectangle18.color="#af12fe"
                                   else
                                       rectangle18.color="#ff0000"
                               }
                           }
                           if(D.winnerFlag2==1)
                               {
                               if(D.tempPlayer==8)
                               {D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle18.color="#ff0000"
                                   else
                                       rectangle18.color="#af12fe"
                               }
                               else if(D.tempPlayer==9)
                                   {
                                   D.winnerFlag2=0;
                                   if(D.dotsMode==1)
                                       rectangle18.color="#af12fe"
                                   else
                                       rectangle18.color="#ff0000"
                               }
                           }



                       }
                       else if(D.playmode==2)//player vs cpu
                           {



                        D.dotsCaller(3,7,4,7)
                           D.count++;
                           if(D.winnerFlag1==1)
                               {
                               D.winnerFlag1=0;
                               if(D.dotsMode==1)
                                   rectangle18.color="#ff0000"
                               else
                                   rectangle18.color="#af12fe"
                           }
                           if(D.winnerFlag2==1)
                               {
                               D.winnerFlag2=0;
                               if(D.dotsMode==1)
                                   rectangle18.color="#ff0000"
                               else
                                   rectangle18.color="#af12fe"
                           }
                           while(D.tempPlayer==9 && D.count<45)
                               {D.count++;
                               if(D.dotsMode==1)
                                   {
      var c1 = {x:0,y:0,a:0,b:0};

                                   c1=D.AIcoordinateGenerator();
                                 D.dotsCaller(c1.x,c1.y,c1.a,c1.b);

                                  drawLine(c1.x,c1.y,c1.a,c1.b);

                               }

                            else if(D.dotsMode==2)
                               {
                               var c = {x:0,y:0,a:0,b:0};

                               c=D.AIcoordinateGenerator();
                             D.dotsCaller(c.x,c.y,c.a,c.b);
                              drawLinereverse(c.x,c.y,c.a,c.b);


                           }

                           }

                       }


                }

                       p1score.text = ""+D.count1;
                       p2score.text = ""+D.count2;

            }

            }

        }

        Rectangle {
            id: rectangle1
            x: 119
            y: 120
            width: 50
            height: 50
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle2
            x: 190
            y: 120
            width: 48
            height: 50
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle3
            x: 259
            y: 120
            width: 51.5
            height: 50
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle4
            x: 331
            y: 120
            width: 49
            height: 50
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle5
            x: 401
            y: 120
            width: 47
            height: 50
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle6
            x: 469
            y: 120
            width: 51
            height: 50
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle7
            x: 119
            y: 191
            width: 50
            height: 48
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle8
            x: 190
            y: 191
            width: 48
            height: 48
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle9
            x: 259
            y: 191
            width: 51
            height: 48
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle10
            x: 331
            y: 191
            width: 49
            height: 48
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle11
            x: 401
            y: 191
            width: 48
            height: 48
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle12
            x: 469
            y: 191
            width: 52
            height: 48
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle13
            x: 119
            y: 260
            width: 50
            height: 51
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle14
            x: 190
            y: 260
            width: 48
            height: 51
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle15
            x: 259
            y: 260
            width: 51
            height: 51
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle16
            x: 331
            y: 260
            width: 49
            height: 51
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle17
            x: 401
            y: 260
            width: 47
            height: 51
            color: "#ffffff"
            radius: 5
            z: 3
        }

        Rectangle {
            id: rectangle18
            x: 469
            y: 260
            width: 51
            height: 51
            color: "#ffffff"
            radius: 5
            z: 3
        }



    }
}



Text {
    id: p1
    x: 66
    y: 21
    width: 80
    height: 20
    text: "PLAYER"
    visible: false
    font.family: "Lucida Console"
    font.bold: true
    z: 6
    font.pixelSize: 25
}

Text {
    id: p2
    x: 429
    y: 21
    width: 80
    height: 20
    text: "CPU"
    visible: false
    font.pixelSize: 25
    font.bold: true
    font.family: "Lucida Console"
    z: 6
}

Text {
    id: p1score
    x: 217
    y: 13
    width: 80
    height: 20
    text: "00"
    visible: false
    z: 6
    font.pixelSize: 35
}

Text {
    id: p2score
    x: 532
    y: 13
    width: 80
    height: 20
    text: "00"
    visible: false
    font.pixelSize: 35
    z: 6
}




    Image {
        id: image29
        x: 82
        y: -133
        opacity: 0
        visible: false
        rotation: -90
        z: 5
        source: "score.png"
    }

    Image {
        id: image30
        x: 400
        y: -132
        opacity: 0
        visible: true
        source: "score.png"
        rotation: -90
        z: 5
    }

    Image {
        id: resumebutton
        x: 0
        y: 53
        visible: false
        source: "pause.png"
        opacity: 1

        MouseArea {
            id: resumearea
            x: 0
            y:0
            visible: true
            width: 100
            height: 100
            opacity: 1
            onClicked: {mainMenu.state="lost";


            }
        }

    }
    ///////////timer found

    Timer {
        id: timer1
        interval: 1
        running: false
        onTriggered: {
            mainMenu.state = "play"
        }
    }

    Image {
        id: logo
        x: 258
        y: 53
        visible: true
        opacity: 0
        source: "logo.png"
    }

    Image {
        id: shadow
        x: 217
        y: 124
        opacity: 0
        source: "shadow.png"
    }

    Image {
        id: playButton
        x: 260
        y: 262
        source: "play.png"
        opacity: 0
    }


    Text {
        id: text1
        x: 209
        y: 130
        width: 80
        height: 20
        text: "Student  Developer"
        opacity: 0
        font.bold: true
        font.pixelSize: 21
    }



    Timer{


        id: screenFirst1
        interval: 1000
        running: true;
        onTriggered: mainMenu.state = "State1";
    }
    Timer{


        id: screenFirst2
        interval: 2000
        running: true;
        onTriggered: mainMenu.state = "State2";
    }
    Timer{


        id: screenFirst3
        interval: 2500
        running: true;
        onTriggered: {mainMenu.state = "State3";
           connect.running=true
        }
    }


    Timer{


        id: connect
        interval: 4000
        running: false;
        onTriggered: {timer1.running=true;
        }
    }

    Image {
        id: biglogo
        x: 114
        y: 11
        source: "biglogo.png"
        opacity: 0
    }
    Image {
        id: bigshadow
        x: 54
        y: 153
        source: "bigshadow.png"
        opacity: 0
    }


    Image {
        id: rightArrow
        x: 444
        y: 266
        source: "arrowR.png"
        opacity: 0

        MouseArea {
            id: maRA
            x: 446
            y: 266
            width: 100
            height: 100
            opacity: 0
            anchors.fill: rightArrow
            onClicked: {


                if(mainMenu.state == "play") {
                    mainMenu.state = "help"
                }

                else if(mainMenu.state == "help") {
                    mainMenu.state = "credits"
                }
                else if(mainMenu.state == "credits") {
                    mainMenu.state = "exit"
                }

                else if(mainMenu.state == "exit") {
                    mainMenu.state = "play"
                }
                else if(mainMenu.state == "exitMenuNo") {
                    mainMenu.state = "exitMenuYes"
                }
                else if(mainMenu.state == "exitMenuYes") {
                    mainMenu.state = "exitMenuNo"
                }
                else if(mainMenu.state == "quitMenuNo") {
                    mainMenu.state = "quitMenuYes"
                }
                else if(mainMenu.state == "quitMenuYes") {
                    mainMenu.state = "quitMenuNo"
                }
            }
        }
    }

    Image {
        id: leftArrow
        x: 146
        y: 266
        source: "arrowL.png"
        opacity: 0

        MouseArea {
            id: maLA
            x: 146
            y: 266
            width: 100
            height: 100
            opacity: 0
            anchors.fill: leftArrow
            onClicked: {

                if(mainMenu.state == "play") {
                    mainMenu.state = "exit"
                }
                else if(mainMenu.state == "exit") {
                    mainMenu.state = "credits"
                }

                else if(mainMenu.state == "credits") {
                    mainMenu.state = "help"
                }
                else if(mainMenu.state == "help") {
                    mainMenu.state = "play"
                }

                else if(mainMenu.state == "exitMenuNo") {
                    mainMenu.state = "exitMenuYes"
                }
                else if(mainMenu.state == "exitMenuYes") {
                    mainMenu.state = "exitMenuNo"
                }
                else if(mainMenu.state == "quitMenuNo") {
                    mainMenu.state = "quitMenuYes"
                }
                else if(mainMenu.state == "quitMenuYes") {
                    mainMenu.state = "quitMenuNo"
                }

            }

        }
    }

    MouseArea {
        id: maGlobal
        x: 260
        y: 262
        width: 100
        height: 100
        opacity: 0

        onClicked: {
            if(mainMenu.state == "play") {
                mainMenu.state = "playMenuC0"
                console.log("going to playMenuC0");
            }

            else if(mainMenu.state == "help") {
                mainMenu.state = "helpMenu"
                console.log("going to helpMenu");
            }
            else if(mainMenu.state == "credits") {
                mainMenu.state = "creditsMenu"
                console.log("going to creditsMenu");
            }
            else if(mainMenu.state == "about") {
                mainMenu.state = "aboutMenu"
                console.log("going to aboutMenu");
            }
            else if(mainMenu.state == "exit") {
                mainMenu.state = "exitMenuNo"
                console.log("going to exitMenuNo");
            }
            else if(mainMenu.state == "exitMenuNo") {
                mainMenu.state = "exit"
                console.log("going to exit");
            }
            else if(mainMenu.state == "exitMenuYes") {
                console.log("going to exitMenu");
                Qt.quit();
            }
            else if(mainMenu.state == "quitMenuNo") {
                mainMenu.state = "lost"
                console.log("going to exit");
            }
            else if(mainMenu.state == "quitMenuYes") {
                console.log("going to exitMenu");
                Qt.quit();
            }

        }
    }

    Image {
        id: settingsButton
        x: 213
        y: 262
        source: "settings.png"
        opacity: 0
    }

    Image {
        id: helpButton
        x: 263
        y: 262
        source: "help.png"
        opacity: 0
    }

    Image {
        id: creditsButton
        x: 226
        y: 262
        source: "credits.png"
        opacity: 0
    }

    Image {
        id: aboutButton
        x: 251
        y: 263
        source: "about.png"
        opacity: 0
    }

    Image {
        id: exit
        x: 276
        y: 266
        source: "exit.png"
        opacity: 0
    }

    Image {
        id: ays
        x: 220
        y: 145
        source: "playMenu/ays.png"
        opacity: 0
    }

    Image {
        id: no
        x: 295
        y: 266
        source: "playMenu/no.png"
        opacity: 0
    }

    Image {
        id: yes
        x: 282
        y: 263
        source: "playMenu/yes.png"
        opacity: 0
    }

    Image {
        id: pgame
        x: 277
        y: 8
        source: "play2/game.png"
        opacity: 0
    }

    Image {
        id: psmartdots
        x: 261
        y: 53
        source: "play2/smartdots.png"
        opacity: 0
    }

    Image {
        id: pmode
        x: 279
        y: 86
        source: "play2/mode.png"
        opacity: 0
    }

    Image {
        id: poneplayer
        x: 263
        y: 134
        source: "play2/oneplayer.png"
        opacity: 0
    }

    Image {
        id: plevel
        x: 276
        y: 171
        source: "play2/level.png"
        opacity: 0
    }

    Image {
        id: pbeginner
        x: 270
        y: 229
        source: "play2/beginner.png"
        opacity: 0
    }

    Loader {
        id: dotsLoader
    }


    Image {
        id: pplayicon
        x: 251
        y: 222
        source: "play2/playicon.png"
        opacity: 0




        MouseArea {
            id: mapplayicon
            x: 287
            y: 276
            width: 100
            height: 100
            opacity: 0
            anchors.fill: pplayicon
            onClicked: {


                if(mainMenu.state == "playMenuC0")
                {

                    pleasework(1,2,1);
                }

           else if(mainMenu.state == "playMenuC1")
                {

                    pleasework(2,2,1);
                }
            else if(mainMenu.state == "playMenuC2")
                   {

                       pleasework(3,2,1);
                   }
              else if(mainMenu.state == "playMenuC4")
                   {

                       pleasework(1,2,2);
                   }
              else if(mainMenu.state == "playMenuC5")
                   {

                       pleasework(2,2,2);
                   }
              else if(mainMenu.state == "playMenuC6")
                   {

                       pleasework(3,2,2);
                   }
              else if(mainMenu.state == "playMenuC3")
                   {

                       pleasework(0,1,1);
                   }
              else if(mainMenu.state == "playMenuC7")
                   {

                       pleasework(0,1,2);
                   }



            mainMenu.state= "toDots"




            }
        }
    }

    Image {
        id: pgameR
        x: 434
        y: 38
        source: "arrowR.png"
        opacity: 0

        MouseArea {
            id: maglobalpgameR
            x: 446
            y: 51
            width: 100
            height: 100
            opacity: 0
            anchors.fill: pgameR

            onClicked: {
                console.log("STATE= "+mainMenu.state)
                console.log("Game RIGHT ARROW");
                if(mainMenu.state == "playMenuC0") {
                    console.log("C0->C4")
                    mainMenu.state = "playMenuC4"
                }
                else if(mainMenu.state == "playMenuC1") {
                     console.log("C1->C5")
                    mainMenu.state = "playMenuC5"
                }
                else if(mainMenu.state == "playMenuC2") {
                     console.log("C2->C6")
                    mainMenu.state = "playMenuC6"
                }
                else if(mainMenu.state == "playMenuC4") {
                     console.log("C4->C0")

                    mainMenu.state = "playMenuC0"
                }
                else if(mainMenu.state == "playMenuC5") {
                     console.log("C5->C1")
                    mainMenu.state = "playMenuC1"
                }
                else if(mainMenu.state == "playMenuC6") {
                     console.log("C6->C2")
                    mainMenu.state = "playMenuC2"
                }
                else if(mainMenu.state == "playMenuC3") {
                     console.log("C3->C7")
                    mainMenu.state = "playMenuC7"
                }
                else if(mainMenu.state == "playMenuC7") {
                     console.log("C7->C3")
                    mainMenu.state = "playMenuC3"
                }
            }
        }
    }

    Image {
        id: pgameL
        x: 164
        y: 38
        source: "arrowL.png"
        opacity: 0

        MouseArea {
            id: maglobalpgameL
            x: 170
            y: 51
            width: 100
            height: 100
            opacity: 0
            anchors.fill: pgameL

            onClicked: {
                console.log("STATE= "+mainMenu.state)
                console.log("gameLeftArrow");
                if(mainMenu.state == "playMenuC0") {
                     console.log("C0->C4")
                    mainMenu.state = "playMenuC4"
                }
                else if(mainMenu.state == "playMenuC1") {
                     console.log("C1->C5")
                    mainMenu.state = "playMenuC5"
                }
                else if(mainMenu.state == "playMenuC2") {
                     console.log("C2->C6")
                    mainMenu.state = "playMenuC6"
                }
                else if(mainMenu.state == "playMenuC4") {
                     console.log("C4->C0")

                    mainMenu.state = "playMenuC0"
                }
                else if(mainMenu.state == "playMenuC5") {
                     console.log("C5->C1")
                    mainMenu.state = "playMenuC1"
                }
                else if(mainMenu.state == "playMenuC6") {
                     console.log("C6->C2")
                    mainMenu.state = "playMenuC2"
                }
                else if(mainMenu.state == "playMenuC3") {
                     console.log("C3->C7")
                    mainMenu.state = "playMenuC7"
                }
                else if(mainMenu.state == "playMenuC7") {
                     console.log("C7->C3")
                    mainMenu.state = "playMenuC3"
                }
            }
        }
    }

    Image {
        id: pmodeL
        x: 163
        y: 38
        source: "arrowL.png"
        opacity: 0

        MouseArea {
            id: maglobalpmodeL
            x: 170
            y: 134
            width: 100
            height: 100
            opacity: 0
            anchors.fill: pmodeL

            onClicked: {
                console.log("STATE= "+mainMenu.state)
                console.log("ModeLeftArrow")
                if(mainMenu.state == "playMenuC0") {
                    console.log("C0->C3")
                    mainMenu.state = "playMenuC3"
                }
                else if(mainMenu.state == "playMenuC3") {
                     console.log("C3->C0")
                    mainMenu.state = "playMenuC0"
                }
                else if(mainMenu.state == "playMenuC1") {
                     console.log("C1->C3")
                    mainMenu.state = "playMenuC3"
                }
                else if(mainMenu.state == "playMenuC2") {
                     console.log("C2->C3")
                    mainMenu.state = "playMenuC3"
                }
                else if(mainMenu.state == "playMenuC4") {
                     console.log("C4->C7")
                    mainMenu.state = "playMenuC7"
                }
                else if(mainMenu.state == "playMenuC5") {
                     console.log("C5->C7")
                    mainMenu.state = "playMenuC7"
                }
                else if(mainMenu.state == "playMenuC6") {
                     console.log("C6->C7")
                    mainMenu.state = "playMenuC7"
                }
                else if(mainMenu.state == "playMenuC7") {
                     console.log("C7->C4")
                    mainMenu.state = "playMenuC4"
                }

            }
        }
    }

    Image {
        id: pmodeR
        x: 437
        y: 45
        source: "arrowR.png"
        opacity: 0

        MouseArea {
            id: maglobalpmodeR
            x: 446
            y: 132
            width: 100
            height: 100
            opacity: 0
            anchors.fill: pmodeR

            onClicked: {
                console.log("STATE= "+mainMenu.state)
                console.log("ModeRightArrow")
                if(mainMenu.state == "playMenuC0") {
                     console.log("C0->C3")
                    mainMenu.state = "playMenuC3"
                }
                else if(mainMenu.state == "playMenuC3") {
                     console.log("C3->C0")
                    mainMenu.state = "playMenuC0"
                }
                else if(mainMenu.state == "playMenuC1") {
                     console.log("C1->C3")
                    mainMenu.state = "playMenuC3"
                }
                else if(mainMenu.state == "playMenuC2") {
                     console.log("C2->C3")
                    mainMenu.state = "playMenuC3"
                }
                else if(mainMenu.state == "playMenuC4") {
                     console.log("C4->C7")
                    mainMenu.state = "playMenuC7"
                }
                else if(mainMenu.state == "playMenuC5") {
                     console.log("C5->C7")
                    mainMenu.state = "playMenuC7"
                }
                else if(mainMenu.state == "playMenuC6") {
                     console.log("C6->C7")
                    mainMenu.state = "playMenuC7"
                }
                else if(mainMenu.state == "playMenuC7") {
                     console.log("C7->C4")
                    mainMenu.state = "playMenuC4"
                }

            }
        }
    }

    Image {
        id: plevelL
        x: 166
        y: 36
        source: "arrowL.png"
        opacity: 0

        MouseArea {
            id: maglobalplevelL
            x: 170
            y: 227
            width: 100
            height: 100
            opacity: 0
            anchors.fill: plevelL

            onClicked: {
                if(mainMenu.state == "playMenuC0") {
                    console.log("C0->C2")
                    mainMenu.state = "playMenuC2"
                }
                else if(mainMenu.state == "playMenuC1") {
                    console.log("C1->C0")
                    mainMenu.state = "playMenuC0"
                }
                else if(mainMenu.state == "playMenuC2") {
                    console.log("C2->C1")
                    mainMenu.state = "playMenuC1"
                }
                else if(mainMenu.state == "playMenuC4") {
                    console.log("C4->C6")
                    mainMenu.state = "playMenuC6"
                }
                else if(mainMenu.state == "playMenuC5") {
                    console.log("C5->C4")
                    mainMenu.state = "playMenuC4"
                }
                else if(mainMenu.state == "playMenuC6") {
                    console.log("C6->C5")
                    mainMenu.state = "playMenuC5"
                }
                /*console.log("STATE= "+mainMenu.state)
                console.log("levelLeftArrow")
                if(mainMenu.state == "playMenuC0") {
                    console.log("C0->C2");
                    mainMenu.state = "playMenuC2"
                }
                else if(mainMenu.state == "playMenuC2") {
                    console.log("C2->C1")
                    mainMenu.state = "playMenuC1"
                }
                else if(mainMenu.state == "playMenuC1") {
                    console.log("C1->C0")
                    mainMenu.state = "playMenuC0"
                }

                else if(mainMenu.state == "playMenuC4") {
                    console.log("C4->C6")
                    mainMenu.state = "playMenuC6"
                }
                else if(mainMenu.state == "playMenuC6") {
                    console.log("C6->C5")
                    mainMenu.state = "playMenuC5"
                }
                else if(mainMenu.state == "playMenuC5") {
                    console.log("C5->C4")
                    mainMenu.state = "playMenuC4"
                }*/



            }
        }
    }

    Image {
        id: plevelR
        x: 435
        y: 37
        source: "arrowR.png"
        opacity: 0

        MouseArea {
            id: maglobalplevelR
            x: 446
            y: 227
            width: 100
            height: 100
            opacity: 0
            anchors.fill: plevelR

            onClicked: {
                console.log("STATE= "+mainMenu.state)
                console.log("levelRightArrow")

                if(mainMenu.state == "playMenuC0") {
                    console.log("C0->C1")
                    mainMenu.state = "playMenuC1"
                }
                else if(mainMenu.state == "playMenuC1") {
                    console.log("C1->C2")
                    mainMenu.state = "playMenuC2"
                }
                else if(mainMenu.state == "playMenuC2") {
                    console.log("C2->C0")
                    mainMenu.state = "playMenuC0"
                }
                else if(mainMenu.state == "playMenuC4") {
                    console.log("C4->C5")
                    mainMenu.state = "playMenuC5"
                }
                else if(mainMenu.state == "playMenuC5") {
                    console.log("C5->C6")
                    mainMenu.state = "playMenuC6"
                }
                else if(mainMenu.state == "playMenuC6") {
                    console.log("C6->C4")
                    mainMenu.state = "playMenuC4"
                }




            }
        }
    }

    Image {
        id: pintermediate
        x: 258
        y: 230
        source: "play2/intermediate.png"
        opacity: 0
    }

    Image {
        id: pexpert
        x: 286
        y: 230
        source: "play2/expert.png"
        opacity: 0
    }

    Image {
        id: ptwoplayer
        x: 263
        y: 134
        source: "play2/twoplayer.png"
        opacity: 0
    }

    Image {
        id: preversedots
        x: 258
        y: 54
        source: "play2/reversedots.png"
        opacity: 0
    }

    Image {
        id: preverseintermediate
        x: 258
        y: 230
        source: "play2/intermediate.png"
        opacity: 0
    }

    Image {
        id: preverseexpert
        x: 291
        y: 230
        source: "play2/expert.png"
        opacity: 0
    }

    Image {
        id: preversetwoplayer
        x: 265
        y: 137
        source: "play2/twoplayer.png"
        opacity: 0
    }

    Image {
        id: back
        x: 480
        y: 206
        source: "backButton.png"
        opacity: 0

        MouseArea {
            id: maback
            x: 10
            y: 252
            width: 100
            height: 100
            opacity: 0
            anchors.fill: back
            onClicked:  {
                if(mainMenu.state == "playMenuC0" || mainMenu.state == "playMenuC1" || mainMenu.state == "playMenuC2"|| mainMenu.state == "playMenuC3"|| mainMenu.state == "playMenuC4"|| mainMenu.state == "playMenuC5"|| mainMenu.state == "playMenuC6"|| mainMenu.state == "playMenuC7" ) {
                    mainMenu.state = "play"
                }

            }
        }
    }


    Image {
        id: lost
        x: 0
        y: 0
        source: "yhltg.png"
        opacity: 0
    }


    Image {
        id: losearrowL
        x: 540
        y: 250
        source: "losearrowR.png"
        opacity: 0

        MouseArea {
            id: maloseL
            x: 353
            y: 233
            width: 100
            height: 100
            opacity: 0
            anchors.fill: losearrowL

            onClicked: {
                if(D.count<45)


               { if(playAgain.z == 5) {
                    playAgain.z=0;
                    resume.z = 5
                }
                else if(resume.z == 5) {

                   resume.z = 0;
                    btmm.z = 5
                }
                else if(losewinquit.z == 5) {

                    losewinquit.z = 0;
                    playAgain.z = 5
                }
                else if(btmm.z == 5) {

                    btmm.z = 0;
                    losewinquit.z = 5
                }
                }

                else if(D.count>=45)
                { if(playAgain.z == 5) {
                     playAgain.z=0;
                     btmm.z = 5
                 }

                 else if(losewinquit.z == 5) {

                     losewinquit.z = 0;
                     playAgain.z = 5
                 }
                 else if(btmm.z == 5) {

                     btmm.z = 0;
                     losewinquit.z = 5
                 }
                 }

            }
        }
    }

    Image {
        id: loserarrowR
        x: 56
        y: 250
        source: "losearrowL.png"
        opacity: 0

        MouseArea {
            id: maloseR
            x: 65
            y: 250
            width: 100
            height: 100
            opacity: 0
            anchors.fill: loserarrowR

            onClicked: {
                if(D.count<45)
                {
                if(playAgain.z == 5) {
                    playAgain.z=0;
                    losewinquit.z=5
                }
                else if(losewinquit.z == 5) {

                    losewinquit.z = 0;
                    btmm.z=5

                }
                else if(btmm.z == 5) {

                    btmm.z = 0;
                    resume.z = 5
                }
                else if(resume.z == 5) {

                    resume.z = 0;
                    playAgain.z = 5
                }
                }
                else if(D.count>=45)
                {
                    if(playAgain.z == 5) {
                        playAgain.z=0;
                        losewinquit.z=5
                    }
                    else if(losewinquit.z == 5) {

                        losewinquit.z = 0;
                        btmm.z=5

                    }
                    else if(btmm.z == 5) {

                        btmm.z = 0;
                        playagain.z = 5
                    }

                }

            }
        }
    }

    Image {
        id: playAgain
        x: -65
        y: 214
        source: "playagain.png"
        opacity: 0
    }

    Image {
        id: resume
        x: -65
        y: 214
        source: "resume.png"

        opacity: 0
    }

    Image {
        id: btmm
        x: -60
        y: 230
        source: "btmn.png"
        opacity: 0
    }

    Image {
        id: losewinquit
        x: 47
        y: 241
        source: "winQuit.png"
        opacity: 0
    }

    Image {
        id: trophy
        x: 18
        y: 24
        source: "trophy.png"
        opacity: 0
    }

    Image {
        id: youwin
        x: 37
        y: 36
        source: "yw.png"
        opacity: 0
    }

    MouseArea {
        id: maloseGlobal
        x: 170
        y: 229
        width: 100
        height: 100
        opacity: 0

        onClicked: {
            /*Modified - 15/06/2011 time - 10:30 Developer - Rakesh*/
            if(resume.z == 5) {
                                mainMenu.state = "toDots"
                            }

            else {            common();


            if(playAgain.z == 5) {
                mainMenu.state = "toDots"
            }
            else if(btmm.z == 5) {
                mainMenu.state = "play"
            }
            else if(losewinquit.z == 5) {
                mainMenu.state = "quitMenuNo"
            }

        }
        }
    }

    Image {
        id: gameDraw
        x: -71
        y: -19
        source: "gd.png"
        opacity: 0
    }

    Image {
        id: p1Wins
        x: -69
        y: -14
        source: "p1w.png"
        opacity: 0
    }

    Image {
        id: p2Wins
        x: -70
        y: -29
        source: "p2w.png"
        opacity: 0
    }

    Rectangle {
        id: helpScroll
        x: 0
        y: 0
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0

        ListView {
            id: helpListView
            x: 0
            y: 0
            width: 300
            height: 300
            opacity: 0
            model: helpModel
            delegate: Text {
                x:-150
                text: helpFile
                font.pixelSize: 20
            }
        }

        ListModel {
            id: helpModel
            ListElement {
                helpFile : "<pre align='center' style = 'color:blue'>

                <b><i>SMART DOTS</i></b>
                                          This is a 2 player game

                                          There are 2 modes
                                           a)Versus CPU
                                           b)Versus another Player

                                           Players take turns joining
                                           two horizontally or vertically
                                           adjacent dots by a line.

                                            A player who completes the
                                                 fourth side of a square (a box) colors
                                                that box and must play again.

                                            When a player completes
                                            a Box he gets a point

                                            When all boxes have been
                                            colored,the game ends and
                                            the player who has colored
                                            more boxes wins.

                                            Your aim should be to make
                                            better score than the other
                                            player to win the game.

                </PRE>
                <pre align='center' style = 'color:green'>
                <b><i>                   REVERSE DOTS</i></b>

                                           This is similar to Smart Dots
                                           but it is NOT!!!!

                                           Again There are 2 modes
                                            a)Versus CPU
                                            b)Versus another Player

                                           Players take turns joining
                                            two horizontally or vertically
                                           adjacent dots by a line.

                                           If a player completes the
                                           fourth side of a square then
                                           the Box made out of those four
                                           lines gets the colour of the
                                           Opponent increasing the Score
                                           of the Opponent by one

                                           When a player completes a Box
                                           his Opponent gets a point

                                              When all boxes have been colored,
                                           the game ends and the player
                                           who has least Points Wins

                                           Your aim should be to make
                                           least score by completing the
                                           Squares of Other Player
                                           intelligently and thus
                                           keeping your score less

                <b>                         Best of Luck</b>
                </pre>"

          }
        }

        Image {
            id: helpMenuImage
            x: 0
            y: 0
            source: "bg.png"
            opacity: 0
        }

        Image {
            id: helpbg
            x: 0
            y: 0
            source: "bg.png"
            opacity: 0
        }

        Image {
            id: helpbackButton
            x: 0
            y: 113
            source: "backButton.png"
            opacity: 0

            MouseArea {
                id: mahelpbackButton
                x: 10
                y: 145
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    mainMenu.state = "help"
                }
            }
        }
    }

    Image {
        id: helpmenuBackButton
        x: 18
        y: 113
        source: "backButton.png"
        opacity: 0

        MouseArea {
            id: mahelpmenuBackButton
            x: 47
            y: 174
            width: 100
            height: 100
            opacity: 0
            anchors.fill: parent
            onClicked: {
                mainMenu.state = "help"
            }
        }
    }

    Rectangle {
        id: credtisScroll
        x: 0
        y: 0
        width: 100
        height: 100
        color: "#ffffff"
        opacity: 0

        ListView {
            id: creditsScrollView
            x: 120
            y: 30
            width: 300
            height: 300
            opacity: 0
            model: creditsModel
            delegate: Text{
                x:-150
                text: creditsFile
                font.pixelSize: 25
            }
        }
        ListModel {
            id: creditsModel
            ListElement {
                creditsFile : "<pre align='center' style = 'color:blue'>

                <b><i>                STUDENT DEVELOPERS</i></b>

                                        UI by:
                                        ABHISHEK B S
                                        RAKESH KUMAR R
                                        VIVEK P
                                        Logic by:
                                        SADAN SOHAN M
                                        SANDEEP RAJU P

                                      pinch us @
                                        fivemasterminds@gmail.com


                </pre>"

          }
        }

        Image {
            id: creditsMenuImage
            x: 95
            y: 151
            source: "bg.png"
            opacity: 0
        }

        Image {
            id: creditsbg
            x: 0
            y: 0
            source: "bg.png"
            opacity: 0
        }

        Image {
            id: creditsBackButton
            x: -26
            y: 100
            source: "backButton.png"
            opacity: 0

            MouseArea {
                id: maCreditsBackButton
                x: 18
                y: 150
                width: 100
                height: 100
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    mainMenu.state = "credits"
                }
            }
        }
    }

    Image {
        id: creditsMenuBackButton
        x: 10
        y: 113
        source: "backButton.png"
        opacity: 0

        MouseArea {
            id: macreditsMenuBackButton
            x: 105
            y: 233
            width: 100
            height: 100
            opacity: 0
            anchors.fill: parent
            onClicked: {
                mainMenu.state = "credits"
            }
        }
    }



    states: [

        State {
            name: "play"

            PropertyChanges {
                target: playButton
                opacity: 1
            }

            PropertyChanges {
                target: rightArrow
                x: 446
                y: 266
                opacity: 1
            }

            PropertyChanges {
                target: leftArrow
                opacity: 1
            }

            PropertyChanges {
                target: maLA
                width: 49
                height: 52
                opacity: 1
            }

            PropertyChanges {
                target: maGlobal
                x: 210
                y: 262
                width: 221
                height: 60
                opacity: 1
            }

            PropertyChanges {
                target: maRA
                width: 49
                height: 52
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
            }

            PropertyChanges {
                target: logo
                opacity: 1
            }
        },
        State {
            name: "settings"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: rightArrow
                x: 446
                y: 266
                opacity: 1
            }

            PropertyChanges {
                target: leftArrow
                opacity: 1
            }

            PropertyChanges {
                target: maLA
                width: 49
                height: 52
                opacity: 1
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                opacity: 1
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
            }

            PropertyChanges {
                target: logo
                opacity: 0.9
            }
        },
        State {
            name: "help"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
            }

            PropertyChanges {
                target: logo
                opacity: 1
            }
        },
        State {
            name: "credits"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
            }

            PropertyChanges {
                target: logo
                opacity: 1
            }
        },
        State {
            name: "about"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: aboutButton
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
            }

            PropertyChanges {
                target: logo
                opacity: 1
            }
        },
        State {
            name: "exit"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: exit
                x: 276
                y: 262
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
            }

            PropertyChanges {
                target: logo
                opacity: 1
            }
        },
        State {
            name: "playMenuC0"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: exit
                x: 276
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: pgame
                opacity: 1
            }

            PropertyChanges {
                target: psmartdots
                opacity: 1
            }

            PropertyChanges {
                target: pmode
                opacity: 1
            }

            PropertyChanges {
                target: poneplayer
                opacity: 1
            }

            PropertyChanges {
                target: plevel
                opacity: 1
            }

            PropertyChanges {
                target: pbeginner
                x: 272
                y: 229
                opacity: 1
            }

            PropertyChanges {
                target: pplayicon
                x: 497
                y: 240
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: pgameR
                x: 434
                y: 38
                width: 49
                height: 52
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: pgameL
                x: 158
                y: 38
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: pmodeL
                x: 158
                y: 119
                opacity: 1
                scale: 0.5
            }

            PropertyChanges {
                target: pmodeR
                x: 434
                y: 119
                width: 49
                height: 52
                opacity: 1
                scale: 0.5
            }

            PropertyChanges {
                target: plevelL
                x: 158
                y: 214
                opacity: 1
                scale: 0.5
            }

            PropertyChanges {
                target: plevelR
                x: 434
                y: 214
                opacity: 1
                scale: 0.5
            }

            PropertyChanges {
                target: mapplayicon
                x: 0
                y: 0
                width: 151
                height: 151
                drag.minimumY: -1000
                drag.minimumX: -1000
                drag.maximumY: 1000
                drag.maximumX: 1000
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameL
                width: 70
                height: 70
                anchors.rightMargin: -20
                anchors.bottomMargin: -18
                opacity: 1
                scale: 1
            }

            PropertyChanges {
                target: maglobalpgameR
                x: 0
                y: 0
                width: 70
                height: 72
                anchors.rightMargin: -20
                anchors.bottomMargin: -20
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeL
                x: 0
                y: 0
                width: 66
                height: 70
                anchors.rightMargin: -16
                anchors.bottomMargin: -18
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeR
                x: 0
                y: 0
                width: 66
                height: 70
                anchors.rightMargin: -17
                anchors.bottomMargin: -18
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelL
                x: 0
                y: 0
                width: 72
                height: 78
                anchors.rightMargin: -22
                anchors.bottomMargin: -26
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelR
                x: 0
                y: 0
                width: 66
                height: 74
                anchors.rightMargin: -16
                anchors.bottomMargin: -22
                opacity: 1
            }

            PropertyChanges {
                target: back
                x: -28
                y: 237
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: maback
                x: 0
                y: 0
                width: 153
                height: 154
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "settingsMenu"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: exit
                x: 276
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "helpMenu"


            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: exit
                x: 276
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: helpScroll
                width: 640
                height: 360
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: helpListView
                width: 640
                height: 360
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: helpMenuImage
                opacity: 1
            }

            PropertyChanges {
                target: helpmenuBackButton
                x: -33
                y: 107
                scale: 0.5
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: mahelpmenuBackButton
                x: 0
                y: 0
                width: 153
                height: 154
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "creditsMenu"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                visible: false
                opacity: 1
            }





            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: credtisScroll
                width: 640
                height: 360
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: creditsScrollView
                x: 0
                y: 0
                width: 640
                height: 360
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: creditsMenuImage
                x: 0
                y: 0
                opacity: 1
            }

            PropertyChanges {
                target: creditsMenuBackButton
                scale: 0.5
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: macreditsMenuBackButton
                x: 0
                y: 0
                width: 153
                height: 154
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "aboutMenu"

            //Modifying here

            PropertyChanges {
                target: rect
                visible: false
                opacity:0

                }
            PropertyChanges {
                target: loserect
                visible: true
                opacity:1

                }
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }





            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: exit
                x: 276
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: background
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: maLL
                x: 56
                y: 250
                anchors.topMargin: 0
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
            }
        },
        State {
            name: "exitMenuNo"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: exit
                x: 276
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: ays
                opacity: 1
            }

            PropertyChanges {
                target: no
                x: 295
                y: 266
                opacity: 1
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "exitMenuYes"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: exit
                x: 276
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: ays
                opacity: 1
            }

            PropertyChanges {
                target: no
                x: 295
                y: 266
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: yes
                opacity: 1
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "playMenuC1"

            PropertyChanges {
                target: back
                x: -28
                y: 237
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: maback
                x: 0
                y: 0
                width: 153
                height: 154
                opacity: 1
            }
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }


            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: "266"
                y: "263"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: creditsButton
                x: "230"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: exit
                x: "276"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: pgame
                opacity: "1"
            }

            PropertyChanges {
                target: psmartdots
                opacity: "1"
            }

            PropertyChanges {
                target: pmode
                opacity: "1"
            }

            PropertyChanges {
                target: poneplayer
                opacity: "1"
            }

            PropertyChanges {
                target: plevel
                opacity: "1"
            }

            PropertyChanges {
                target: pbeginner
                x: "272"
                y: "229"
                visible: false
                opacity: "1"
            }



            PropertyChanges {
                target: pplayicon
                x: 497
                y: 240
                scale: 0.5
                opacity: 1
            }


            PropertyChanges {
                target: pgameR
                x: "434"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pgameL
                x: "158"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pmodeL
                x: "158"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: pmodeR
                x: "434"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelL
                x: "158"
                y: "214"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelR
                x: "434"
                y: "214"
                scale: "0.5"
                opacity: 1
            }



            PropertyChanges {
                target: mapplayicon
                x: 0
                y: 0
                width: 151
                height: 151
                drag.minimumY: -1000
                drag.minimumX: -1000
                drag.maximumY: 1000
                drag.maximumX: 1000
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameL
                x: -10
                y: -11
                width: 70
                height: 74
                anchors.topMargin: -11
                anchors.rightMargin: -10
                anchors.bottomMargin: -11
                opacity: 1
                anchors.leftMargin: -10
            }

            PropertyChanges {
                target: maglobalpgameR
                x: 0
                y: 0
                width: 76
                height: 76
                anchors.rightMargin: -26
                anchors.bottomMargin: -24
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeL
                x: -18
                y: 3
                width: 68
                height: 68
                anchors.rightMargin: 0
                anchors.bottomMargin: -14
                anchors.leftMargin: -18
                anchors.topMargin: 3
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeR
                x: 0
                y: 0
                width: 72
                height: 78
                anchors.rightMargin: -23
                anchors.bottomMargin: -26
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelL
                x: -22
                y: -16
                width: 72
                height: 68
                anchors.leftMargin: -22
                anchors.topMargin: -16
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelR
                x: 2
                y: -6
                width: 66
                height: 70
                anchors.leftMargin: 2
                anchors.topMargin: -6
                anchors.rightMargin: -18
                anchors.bottomMargin: -12
                opacity: 1
            }

            PropertyChanges {
                target: pintermediate
                x: 251
                y: 230
                width: 146
                height: 20
                opacity: 1
            }

            PropertyChanges {
                target: preverseintermediate
                x: 251
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "playMenuC2"

            PropertyChanges {
                target: back
                x: -28
                y: 237
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: maback
                x: 0
                y: 0
                width: 153
                height: 154
                opacity: 1
            }
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: "266"
                y: "263"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: creditsButton
                x: "230"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: exit
                x: "276"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: pgame
                opacity: "1"
            }

            PropertyChanges {
                target: psmartdots
                opacity: "1"
            }

            PropertyChanges {
                target: pmode
                opacity: "1"
            }

            PropertyChanges {
                target: poneplayer
                opacity: "1"
            }

            PropertyChanges {
                target: plevel
                opacity: "1"
            }

            PropertyChanges {
                target: pbeginner
                x: "272"
                y: "229"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: pplayicon
                x: 497
                y: 240
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: pgameR
                x: "434"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pgameL
                x: "158"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pmodeL
                x: "158"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: pmodeR
                x: "434"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelL
                x: "158"
                y: "214"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelR
                x: "434"
                y: "214"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: mapplayicon
                x: 0
                y: 0
                width: 151
                height: 151
                drag.minimumY: -1000
                drag.minimumX: -1000
                drag.maximumY: 1000
                drag.maximumX: 1000
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameL
                x: -18
                y: 0
                width: 72
                height: 68
                anchors.leftMargin: -18
                anchors.topMargin: 0
                anchors.rightMargin: -10
                anchors.bottomMargin: -16
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameR
                x: 0
                y: 0
                width: 70
                height: 74
                anchors.rightMargin: -20
                anchors.bottomMargin: -22
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeL
                x: -11
                y: 0
                width: 72
                height: 70
                anchors.leftMargin: -11
                anchors.topMargin: 0
                anchors.rightMargin: -11
                anchors.bottomMargin: -18
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeR
                x: 0
                y: 0
                width: 70
                height: 72
                anchors.rightMargin: -21
                anchors.bottomMargin: -20
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelL
                x: 0
                y: 0
                width: 64
                height: 68
                anchors.rightMargin: -14
                anchors.bottomMargin: -16
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelR
                x: 0
                y: 0
                width: 74
                height: 72
                anchors.rightMargin: -24
                anchors.bottomMargin: -20
                opacity: 1
            }

            PropertyChanges {
                target: pintermediate
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: pexpert
                x: 286
                y: 230
                opacity: 1
            }

            PropertyChanges {
                target: preverseexpert
                x: 286
                y: 230
                width: 73
                height: 20
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "playMenuC3"

            PropertyChanges {
                target: back
                x: -28
                y: 237
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: maback
                x: 0
                y: 0
                width: 153
                height: 154
                opacity: 1
            }
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: "266"
                y: "263"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: creditsButton
                x: "230"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: exit
                x: "276"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: pgame
                opacity: "1"
            }

            PropertyChanges {
                target: psmartdots
                opacity: "1"
            }

            PropertyChanges {
                target: pmode
                opacity: "1"
            }

            PropertyChanges {
                target: poneplayer
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: plevel
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: pbeginner
                x: "272"
                y: "229"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: pplayicon
                x: 497
                y: 240
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: pgameR
                x: "434"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pgameL
                x: "158"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pmodeL
                x: "158"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: pmodeR
                x: "434"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelL
                x: "158"
                y: "214"
                visible: false
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelR
                x: "434"
                y: "214"
                visible: false
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: mapplayicon
                x: 0
                y: 0
                width: 151
                height: 151
                drag.minimumY: -1000
                drag.minimumX: -1000
                drag.maximumY: 1000
                drag.maximumX: 1000
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameL
                width: 72
                height: 76
                anchors.rightMargin: -22
                anchors.bottomMargin: -24
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameR
                x: 0
                y: 0
                width: 70
                height: 70
                anchors.rightMargin: -20
                anchors.bottomMargin: -18
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeL
                x: 0
                y: 0
                width: 70
                height: 70
                anchors.rightMargin: -20
                anchors.bottomMargin: -18
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeR
                x: 0
                y: 0
                width: 64
                height: 66
                anchors.rightMargin: -15
                anchors.bottomMargin: -14
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelL
                x: 0
                y: 0
                width: 49
                height: 52
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelR
                x: 0
                y: 0
                width: 49
                height: 52
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: pintermediate
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: pexpert
                x: 284
                y: 227
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: ptwoplayer
                opacity: 1
            }

            PropertyChanges {
                target: preversetwoplayer
                x: 263
                y: 134
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "playMenuC4"

            PropertyChanges {
                target: back
                x: -28
                y: 237
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: maback
                x: 0
                y: 0
                width: 153
                height: 154
                opacity: 1
            }
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: "266"
                y: "263"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: creditsButton
                x: "230"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: exit
                x: "276"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: pgame
                opacity: "1"
            }

            PropertyChanges {
                target: psmartdots
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: pmode
                opacity: "1"
            }

            PropertyChanges {
                target: poneplayer
                opacity: "1"
            }

            PropertyChanges {
                target: plevel
                opacity: "1"
            }

            PropertyChanges {
                target: pbeginner
                x: "272"
                y: "229"
                opacity: "1"
            }

            PropertyChanges {
                target: pplayicon
                x: 497
                y: 240
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: pgameR
                x: "434"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pgameL
                x: "158"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pmodeL
                x: "158"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: pmodeR
                x: "434"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelL
                x: "158"
                y: "214"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelR
                x: "434"
                y: "214"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: mapplayicon
                x: 0
                y: 0
                width: 151
                height: 151
                drag.minimumY: -1000
                drag.minimumX: -1000
                drag.maximumY: 1000
                drag.maximumX: 1000
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameL
                x: 0
                y: 0
                width: 70
                height: 74
                opacity: 1
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: -20
                anchors.bottomMargin: -22
            }

            PropertyChanges {
                target: maglobalpgameR
                x: 0
                y: 0
                width: 76
                height: 74
                anchors.rightMargin: -26
                anchors.bottomMargin: -22
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeL
                x: 0
                y: 0
                width: 66
                height: 74
                anchors.rightMargin: -16
                anchors.bottomMargin: -22
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeR
                x: 0
                y: 0
                width: 70
                height: 78
                anchors.rightMargin: -21
                anchors.bottomMargin: -26
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelL
                x: 0
                y: 0
                width: 66
                height: 72
                anchors.rightMargin: -16
                anchors.bottomMargin: -20
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelR
                x: 0
                y: 0
                width: 72
                height: 76
                anchors.rightMargin: -22
                anchors.bottomMargin: -24
                opacity: 1
            }

            PropertyChanges {
                target: preversedots
                opacity: 1
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "playMenuC5"

            PropertyChanges {
                target: back
                x: -28
                y: 237
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: maback
                x: 0
                y: 0
                width: 153
                height: 154
                opacity: 1
            }
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: "266"
                y: "263"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: creditsButton
                x: "230"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: exit
                x: "276"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: pgame
                opacity: "1"
            }

            PropertyChanges {
                target: psmartdots
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: pmode
                opacity: "1"
            }

            PropertyChanges {
                target: poneplayer
                opacity: "1"
            }

            PropertyChanges {
                target: plevel
                opacity: "1"
            }

            PropertyChanges {
                target: pbeginner
                x: "272"
                y: "229"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: pplayicon
                x: 497
                y: 240
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: pgameR
                x: "434"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pgameL
                x: "158"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pmodeL
                x: "158"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: pmodeR
                x: "434"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelL
                x: "158"
                y: "214"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelR
                x: "434"
                y: "214"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: mapplayicon
                x: 0
                y: 0
                width: 151
                height: 151
                drag.minimumY: -1000
                drag.minimumX: -1000
                drag.maximumY: 1000
                drag.maximumX: 1000
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameL
                width: 64
                height: 66
                anchors.rightMargin: -14
                anchors.bottomMargin: -14
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameR
                x: 0
                y: 0
                width: 68
                height: 70
                anchors.rightMargin: -18
                anchors.bottomMargin: -18
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeL
                x: 0
                y: 0
                width: 62
                height: 66
                anchors.rightMargin: -12
                anchors.bottomMargin: -14
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeR
                x: 0
                y: 0
                width: 66
                height: 68
                anchors.rightMargin: -17
                anchors.bottomMargin: -16
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelL
                x: 0
                y: 0
                width: 66
                height: 72
                anchors.rightMargin: -16
                anchors.bottomMargin: -20
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelR
                x: 0
                y: 0
                width: 68
                height: 74
                anchors.rightMargin: -18
                anchors.bottomMargin: -22
                opacity: 1
            }

            PropertyChanges {
                target: preversedots
                opacity: 1
            }

            PropertyChanges {
                target: preverseintermediate
                x: 251
                y: 230
                opacity: 1
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "playMenuC6"

            PropertyChanges {
                target: back
                x: -28
                y: 237
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: maback
                x: 0
                y: 0
                width: 153
                height: 154
                opacity: 1
            }
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: "266"
                y: "263"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: creditsButton
                x: "230"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: exit
                x: "276"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: pgame
                opacity: "1"
            }

            PropertyChanges {
                target: psmartdots
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: pmode
                opacity: "1"
            }

            PropertyChanges {
                target: poneplayer
                opacity: "1"
            }

            PropertyChanges {
                target: plevel
                opacity: "1"
            }

            PropertyChanges {
                target: pbeginner
                x: "272"
                y: "229"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: pplayicon
                x: 497
                y: 240
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: pgameR
                x: "434"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pgameL
                x: "158"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pmodeL
                x: "158"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: pmodeR
                x: "434"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelL
                x: "158"
                y: "214"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelR
                x: "434"
                y: "214"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: mapplayicon
                x: 0
                y: 0
                width: 151
                height: 151
                drag.minimumY: -1000
                drag.minimumX: -1000
                drag.maximumY: 1000
                drag.maximumX: 1000
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameL
                width: 64
                height: 72
                anchors.rightMargin: -14
                anchors.bottomMargin: -20
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameR
                x: 0
                y: 0
                width: 70
                height: 72
                anchors.rightMargin: -20
                anchors.bottomMargin: -20
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeL
                x: 0
                y: 0
                width: 66
                height: 68
                anchors.rightMargin: -16
                anchors.bottomMargin: -16
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeR
                x: 0
                y: 0
                width: 74
                height: 76
                anchors.rightMargin: -25
                anchors.bottomMargin: -24
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelL
                x: 0
                y: 0
                width: 68
                height: 76
                anchors.rightMargin: -18
                anchors.bottomMargin: -24
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelR
                x: 0
                y: 0
                width: 68
                height: 74
                anchors.rightMargin: -18
                anchors.bottomMargin: -22
                opacity: 1
            }

            PropertyChanges {
                target: preversedots
                opacity: 1
            }

            PropertyChanges {
                target: preverseexpert
                x: 286
                opacity: 1
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "playMenuC7"

            PropertyChanges {
                target: back
                x: -28
                y: 237
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: maback
                x: 0
                y: 0
                width: 153
                height: 154
                opacity: 1
            }
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: "266"
                y: "263"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: creditsButton
                x: "230"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: exit
                x: "276"
                y: "262"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: pgame
                opacity: "1"
            }

            PropertyChanges {
                target: psmartdots
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: pmode
                opacity: "1"
            }

            PropertyChanges {
                target: poneplayer
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: plevel
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: pbeginner
                x: "272"
                y: "229"
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: pplayicon
                x: 497
                y: 240
                scale: 0.5
                opacity: 1
            }

            PropertyChanges {
                target: pgameR
                x: "434"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pgameL
                x: "158"
                y: "38"
                scale: "0.5"
                opacity: "1"
            }

            PropertyChanges {
                target: pmodeL
                x: "158"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: pmodeR
                x: "434"
                y: "119"
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelL
                x: "158"
                y: "214"
                visible: false
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: plevelR
                x: "434"
                y: "214"
                visible: false
                scale: "0.5"
                opacity: 1
            }

            PropertyChanges {
                target: mapplayicon
                x: 0
                y: 0
                width: 151
                height: 151
                drag.minimumY: -1000
                drag.minimumX: -1000
                drag.maximumY: 1000
                drag.maximumX: 1000
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameL
                width: 64
                height: 64
                anchors.rightMargin: -14
                anchors.bottomMargin: -12
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpgameR
                x: 0
                y: 0
                width: 66
                height: 80
                anchors.rightMargin: -16
                anchors.bottomMargin: -28
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeL
                x: 0
                y: 0
                width: 66
                height: 70
                anchors.rightMargin: -16
                anchors.bottomMargin: -18
                opacity: 1
            }

            PropertyChanges {
                target: maglobalpmodeR
                x: 0
                y: 0
                width: 64
                height: 68
                anchors.rightMargin: -15
                anchors.bottomMargin: -16
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelL
                x: 0
                y: 0
                width: 49
                height: 52
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: maglobalplevelR
                x: 0
                y: 0
                width: 49
                height: 52
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: preversedots
                opacity: 1
            }

            PropertyChanges {
                target: preversetwoplayer
                x: 263
                y: 134
                opacity: 1
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "toDots"

            PropertyChanges {
                target: rect
                visible: true
                opacity:1

                }
            PropertyChanges {
                target: dotGrid
                visible:true
                opacity:1


            }


            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: p2
                x: 385
                y: 0
                visible: true
            }

            PropertyChanges {
                target: image30
                x: 418
                y: -175
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: expand
                x: -60
                y: -75
                scale: 1.2
                opacity: 1
            }

            PropertyChanges {
                target: image29
                y: -175
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: p2score
                x: 532
                y: -2
                font.pixelSize: 25
                visible: true
            }

            PropertyChanges {
                target: p1
                x: 66
                y: 0
                visible: true
            }

            PropertyChanges {
                target: p1score
                y: -2
                font.pixelSize: 25
                visible: true
            }

            PropertyChanges {
                target: resumebutton
                x: 5
                y: 137
                width: 40
                height: 40
                z: 10
                visible: true
                opacity: 1
            }

            PropertyChanges {
                target: resumearea
                x: 0
                y: 0
                width: 40
                height: 40
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                visible: false
                opacity: 0
            }
        },
        State {
            name: "lost"

            PropertyChanges {
                target: mainMenu
                z: 0
            }

            PropertyChanges {
                target: lost
                x: -209
                y: -131
                z: 0
                scale: 0.4
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
                z: 3
            }

            PropertyChanges {
                target: losearrowL
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: loserarrowR
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: maloseL
                x: 0
                y: 0
                width: 49
                height: 52
                z: 5
                drag.minimumY: -1000
                drag.minimumX: -1000
                drag.maximumY: 1000
                drag.maximumX: 1000
                opacity: 1
            }

            PropertyChanges {
                target: maloseR
                x: 0
                y: 0
                width: 49
                height: 52
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: playAgain
                x: -141
                y: 178
                scale: 0.2
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: resume
                x: 273
                y: 255
                width: 170
                height: 50
                scale: 1
                z: 0
                opacity: 1
            }

            PropertyChanges {
                target: btmm
                x: -465
                y: 176
                scale: 0.2
                z: 0
                opacity: 1
            }

            PropertyChanges {
                target: losewinquit
                x: 123
                y: 171
                z: 0
                scale: 0.2
                opacity: 1
            }

            PropertyChanges {
                target: trophy
                scale: 0.7
                z: 0
                opacity: 1
            }

            PropertyChanges {
                target: youwin
                x: 101
                y: 2
                z: 0
                scale: 0.6
                opacity: 1
            }

            PropertyChanges {
                target: maloseGlobal
                x: 148
                y: 249
                width: 345
                height: 55
                z: 5
                opacity: 1
            }

            PropertyChanges {
                target: gameDraw
                x: 113
                y: -121
                scale: 0.4
                z: 0
                opacity: 1
            }

            PropertyChanges {
                target: p1Wins
                x: 35
                y: -119
                z: 0
                scale: 0.4
                opacity: 1
            }

            PropertyChanges {
                target: p2Wins
                x: 13
                y: -118
                z: 0
                scale: 0.4
                opacity: 1
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: helpScroll
                visible: false
            }
        },
        State {
            name: "quitMenuNo"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: exit
                x: 276
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: ays
                opacity: 1
            }

            PropertyChanges {
                target: no
                x: 295
                y: 266
                opacity: 1
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "quitMenuYes"
            PropertyChanges {
                target: playButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: rightArrow
                x: "446"
                y: "266"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: leftArrow
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maLA
                width: "49"
                height: "52"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maGlobal
                x: "210"
                y: "262"
                width: "221"
                height: "60"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: maRA
                width: "49"
                height: "52"
                visible: true
                opacity: "1"
            }

            PropertyChanges {
                target: settingsButton
                visible: false
                opacity: "1"
            }

            PropertyChanges {
                target: helpButton
                x: 266
                y: 263
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: creditsButton
                x: 230
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: aboutButton
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: exit
                x: 276
                y: 262
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: logo
                visible: false
            }

            PropertyChanges {
                target: shadow
                visible: false
            }

            PropertyChanges {
                target: ays
                opacity: 1
            }

            PropertyChanges {
                target: no
                x: 295
                y: 266
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: yes
                opacity: 1
            }

            PropertyChanges {
                target: credtisScroll
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }

            PropertyChanges {
                target: p2Wins
                opacity: 0
            }
        },
        State {
            name: "State1"

            PropertyChanges {
                target: text1
                x: 274
                y: 130
                horizontalAlignment: "AlignHCenter"
                font.pixelSize: 40
                opacity: 1
            }

            PropertyChanges {
                target: shadow
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "State2"
            PropertyChanges {
                target: text1
                x: 198
                y: -38
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: biglogo
                x: 220
                y: -202
                width: 200
                height: 200
                opacity: 1
            }

            PropertyChanges {
                target: bigshadow
                x: 220
                y: 265
                width: 196
                height: 171
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "State3"
            PropertyChanges {
                target: text1
                x: 198
                y: -38
                visible: false
                opacity: 1
            }

            PropertyChanges {
                target: biglogo
                x: 220
                y: 45
                width: 200
                height: 200
                opacity: 1
            }

            PropertyChanges {
                target: bigshadow
                x: 220
                y: 167
                width: 196
                height: 171
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        },
        State {
            name: "State4"

            PropertyChanges {
                target: text1
                visible: false
            }

            PropertyChanges {
                target: biglogo
                opacity: 0
            }

            PropertyChanges {
                target: background
                opacity: 1
            }
        }
    ]

    transitions:
        [
         Transition {
             from: "*"; to: "State1"
             NumberAnimation {
                 easing.amplitude: 2
                 properties: "x,y,opacity";
                 //easing.type: Easing.InBounce;
                 duration: 1000
             }
        },

             Transition {
                 from: "*"; to: "State3"
                 NumberAnimation {
                     easing.amplitude: 2
                     properties: "x,y";
                     easing.type: Easing.OutBounce;
                     duration: 1500
                 }
             }

    ]
}
