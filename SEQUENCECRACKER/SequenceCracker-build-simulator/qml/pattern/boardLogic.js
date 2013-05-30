//boardLogic.js



var numberArray = new Array();
var countCorrect = 1;
var level;
var level1r =1+ (Math.floor(Math.random()*100)%4);
var level2r =1+  (Math.floor(Math.random()*100)%4);
var level3r = 1+  (Math.floor(Math.random()*100)%2);
var level4r = 1+ (Math.floor(Math.random()*100)%4);
var level5r = 1+  (Math.floor(Math.random()*100)%4);



function countCorrectLogic()
{
    if(level==1)
    {
        if(level1r==1 || level1r==2 || level1r==3 || level1r==4 )
        {
            if(countCorrect==4)
                countCorrect += 1;
        }
    }
    else if(level == 2)
    {
        if(level2r==1 || level2r==2 || level2r==3 || level2r==4)
        {
            //console.log("Skipping the number 4 and 5 is in countCorrect")
            if(countCorrect == 4) {
                countCorrect += 1;
               // console.log(countCorrect);
            }

        }
       // console.log(countCorrect);


    }

    else if(level== 3)
    {
        if(level3r == 1 || level3r == 2)
        {
            if(countCorrect==8)
                countCorrect += 1;
            else if(countCorrect==10)
                countCorrect += 1;
            else if(countCorrect==13)
                countCorrect += 1;
        }
    }

    else if(level == 4)
    {
       if(level4r==1 || level4r==2 ||level4r==3 || level4r==4)
        {
             if(countCorrect==3)
                countCorrect += 2;
        }
        else if(level4r==2 ||level4r==3 || level4r==4)
         {
              if(countCorrect==3)
                 countCorrect += 2;
         }
    }

    else if(level == 5)
    {
        if(level5r==1)
        {
        if(countCorrect==5)
            countCorrect += 1;

        else if(countCorrect==7)
            countCorrect += 1;

        else if(countCorrect==11)
            countCorrect += 1;
        }
        else if(level5r==2)
        {
            if(countCorrect==4)
                countCorrect += 1;

           else if(countCorrect==6)
                countCorrect += 1;
        }
        else if(level5r==3)
        {
            if(countCorrect==3)
                countCorrect += 1;

           else if(countCorrect==9)
                countCorrect += 1;
            else if(countCorrect==15)
                 countCorrect += 1;
        }
        else if(level5r==4)
        {
            if(countCorrect==3)
                countCorrect += 1;

           else if(countCorrect==9)
                countCorrect += 1;
            else if(countCorrect==15)
                 countCorrect += 1;
        }
    }


}

function a()
{
    //--------------------Switch case to check for the level
    switch(level)
    {
    case 1 ://------------------------LEVEL 1 (VerticalSequence)
        console.log("Coming to level 1");
        switch(level1r)
            {
                case 1:
                    {
                    //---------------------------------------
                    //This part of the code is to display 3 hint numbers
                    col1b1Text.text = 1;
                    col1b2Text.text = 2;
                    col2b1Text.text = 4;
                    col1b1Text.visible = true;
                    col1b2Text.visible = true;
                    col2b1Text.visible = true;
                    macol1b1.opacity = 0;
                    macol1b2.opacity = 0;
                    macol2b1.opacity = 0;
                    countCorrect = 3;
                    //-----------------------------------------

                    for(var i = 1;i < 20 ; i++)
                    {
                        numberArray[i]=i;
                    }
                }
                break;
                case 2:
                    {
                    //---------------------------------------
                    //This part of the code is to display 3 hint numbers
                    col1b3Text.text = 1;
                    col1b2Text.text = 2;
                    col2b4Text.text = 4;
                    col1b3Text.visible = true;
                    col1b2Text.visible = true;
                    col2b4Text.visible = true;
                    macol1b3.opacity = 0;
                    macol1b2.opacity = 0;
                    macol2b4.opacity = 0;
                    countCorrect = 3;
                    //-----------------------------------------

                    numberArray[1]=3;
                    numberArray[2]=2;
                    numberArray[3]=1;
                    numberArray[4]=7;
                    numberArray[5]=6;
                    numberArray[6]=5;
                    numberArray[7]=4;
                    numberArray[8]=12;
                    numberArray[9]=11;
                    numberArray[10]=10;
                    numberArray[11]=9;
                    numberArray[12]=8;
                    numberArray[13]=16;
                    numberArray[14]=15;
                    numberArray[15]=14;
                    numberArray[16]=13;
                    numberArray[17]=19;
                    numberArray[18]=18;
                    numberArray[19]=17;

                }
                break;
                case  3:

                    //---------------------------------------
                    //This part of the code is to display 3 hint numbers
                    col5b1Text.text = 1;
                    col5b2Text.text = 2;
                    col4b1Text.text = 4;
                    col5b1Text.visible = true;
                    col5b2Text.visible = true;
                    col4b1Text.visible = true;
                    macol5b1.opacity = 0;
                    macol5b2.opacity = 0;
                    macol4b1.opacity = 0;
                    countCorrect = 3;
                    //-----------------------------------------

                    numberArray[1]=17;
                    numberArray[2]=18;
                    numberArray[3]=19;
                    numberArray[4]=13;
                    numberArray[5]=14;
                    numberArray[6]=15;
                    numberArray[7]=16;
                    numberArray[8]=8;
                    numberArray[9]=9;
                    numberArray[10]=10;
                    numberArray[11]=11;
                    numberArray[12]=12;
                    numberArray[13]=4;
                    numberArray[14]=5;
                    numberArray[15]=6;
                    numberArray[16]=7;
                    numberArray[17]=1;
                    numberArray[18]=2;
                    numberArray[19]=3;

                    break;

                case  4:

                    //---------------------------------------
                    //This part of the code is to display 3 hint numbers
                    col5b3Text.text = 1;
                    col5b2Text.text = 2;
                    col4b4Text.text = 4;
                    col5b3Text.visible = true;
                    col5b2Text.visible = true;
                    col4b4Text.visible = true;
                    macol5b3.opacity = 0;
                    macol5b2.opacity = 0;
                    macol4b4.opacity = 0;
                    countCorrect = 3;
                    //-----------------------------------------

                    for(var i = 1;i < 20 ; i++)
                    {
                        numberArray[i]=20-i;
                    }
                    break;

            }
        break;

        case 2://------------------------------LEVEL 2 HEXAGON
                console.log("Coming to level 2");
            switch(level2r)
                {
                    case 1:
                        console.log("Coming to level 2 case1");
                        //---------------------------------------
                        //This part of the code is to display 3 hint numbers
                        col1b1Text.text = 1;
                        col2b1Text.text = 2;
                        col1b2Text.text = 4;
                        col1b1Text.visible = true;
                        col2b1Text.visible = true;
                        col1b2Text.visible = true;
                        macol1b1.opacity = 0;
                        macol2b1.opacity = 0;
                        macol1b2.opacity = 0;
                        countCorrect = 3;
                        //-----------------------------------------

                                    numberArray[1]=1;
                                    numberArray[2]=4;
                                    numberArray[3]=8;
                                    numberArray[4]=2;
                                    numberArray[5]=5;
                                    numberArray[6]=9;
                                    numberArray[7]=13;
                                    numberArray[8]=3;
                                    numberArray[9]=6;
                                    numberArray[10]=10;
                                    numberArray[11]=14;
                                    numberArray[12]=17;
                                    numberArray[13]=7;
                                    numberArray[14]=11;
                                    numberArray[15]=15;
                                    numberArray[16]=18;
                                    numberArray[17]=12;
                                    numberArray[18]=16;
                                    numberArray[19]=19;


                    break;


                    case 2:
                        console.log("Coming to level 2 case2");
                        //---------------------------------------
                        //This part of the code is to display 3 hint numbers
                        col3b1Text.text = 1;
                        col4b1Text.text = 2;
                        col2b1Text.text = 4;
                        col3b1Text.visible = true;
                        col2b1Text.visible = true;
                        col4b1Text.visible = true;
                        macol3b1.opacity = 0;
                        macol2b1.opacity = 0;
                        macol4b1.opacity = 0;
                        countCorrect = 3;
                        //-----------------------------------------

                                    numberArray[1]=8;
                                    numberArray[2]=13;
                                    numberArray[3]=17;
                                    numberArray[4]=4;
                                    numberArray[5]=9;
                                    numberArray[6]=14;
                                    numberArray[7]=18;
                                    numberArray[8]=1;
                                    numberArray[9]=5;
                                    numberArray[10]=10;
                                    numberArray[11]=15;
                                    numberArray[12]=19;
                                    numberArray[13]=2;
                                    numberArray[14]=6;
                                    numberArray[15]=11;
                                    numberArray[16]=16;
                                    numberArray[17]=3;
                                    numberArray[18]=7;
                                    numberArray[19]=12;


                    break;

                    case 3:
                        console.log("Coming to level 2 case3");
                        //---------------------------------------
                        //This part of the code is to display 3 hint numbers
                        col1b3Text.text = 1;
                        col2b4Text.text = 2;
                        col1b2Text.text = 4;
                        col1b3Text.visible = true;
                        col2b4Text.visible = true;
                        col1b2Text.visible = true;
                        macol1b3.opacity = 0;
                        macol2b4.opacity = 0;
                        macol1b2.opacity = 0;
                        countCorrect = 3;
                        //-----------------------------------------

                                    numberArray[1]=8;
                                    numberArray[2]=4;
                                    numberArray[3]=1;
                                    numberArray[4]=13;
                                    numberArray[5]=9;
                                    numberArray[6]=5;
                                    numberArray[7]=2;
                                    numberArray[8]=17;
                                    numberArray[9]=14;
                                    numberArray[10]=10;
                                    numberArray[11]=6;
                                    numberArray[12]=3;
                                    numberArray[13]=18;
                                    numberArray[14]=15;
                                    numberArray[15]=11;
                                    numberArray[16]=7;
                                    numberArray[17]=19;
                                    numberArray[18]=16;
                                    numberArray[19]=12;


                    break;
                    case 4:
                        console.log("Coming to level 2 case4");
                        //---------------------------------------
                        //This part of the code is to display 3 hint numbers
                        col3b5Text.text = 1;
                        col4b4Text.text = 2;
                        col2b4Text.text = 4;
                        col3b5Text.visible = true;
                        col4b4Text.visible = true;
                        col2b4Text.visible = true;
                        macol3b5.opacity = 0;
                        macol4b4.opacity = 0;
                        macol2b4.opacity = 0;
                        countCorrect = 3;
                        //-----------------------------------------

                                    numberArray[1]=17;
                                    numberArray[2]=13;
                                    numberArray[3]=8;
                                    numberArray[4]=18;
                                    numberArray[5]=14;
                                    numberArray[6]=9;
                                    numberArray[7]=4;
                                    numberArray[8]=19;
                                    numberArray[9]=15;
                                    numberArray[10]=10;
                                    numberArray[11]=5;
                                    numberArray[12]=1;
                                    numberArray[13]=16;
                                    numberArray[14]=11;
                                    numberArray[15]=6;
                                    numberArray[16]=2;
                                    numberArray[17]=12;
                                    numberArray[18]=7;
                                    numberArray[19]=3;


                    break;


                }




            break;


        case 3://---------------------------------Level3 snake
            switch(level3r)
                {
                case 1: //---------------------------------------
                    //This part of the code is to display 3 hint numbers
                    col3b1Text.text = 1;
                    col1b1Text.text = 8;
                    col3b3Text.text = 10;
                    col4b4Text.text = 13;
                    col3b1Text.visible = true;
                    col1b1Text.visible = true;
                    col3b3Text.visible = true;
                    col4b4Text.visible = true;
                    macol3b1.opacity = 0;
                    macol1b1.opacity = 0;
                    macol3b3.opacity = 0;
                    macol4b4.opacity = 0;
                    countCorrect = 2;
                    //-----------------------------------------

                        numberArray[1]=8;
                        numberArray[2]=16;
                        numberArray[3]=17;
                        numberArray[4]=7;
                        numberArray[5]=9;
                        numberArray[6]=15;
                        numberArray[7]=18;
                        numberArray[8]=1;
                        numberArray[9]=6;
                        numberArray[10]=10;
                        numberArray[11]=14;
                        numberArray[12]=19;
                        numberArray[13]=2;
                        numberArray[14]=5;
                        numberArray[15]=11;
                        numberArray[16]=13;
                        numberArray[17]=3;
                        numberArray[18]=4;
                        numberArray[19]=12;
                break;
                case 2:
                    //This part of the code is to display 3 hint numbers
                    col3b5Text.text = 1;
                    col1b3Text.text = 8;
                    col3b3Text.text = 10;
                    col4b1Text.text = 13;
                    col3b5Text.visible = true;
                    col1b3Text.visible = true;
                    col3b3Text.visible = true;
                    col4b1Text.visible = true;
                    macol3b5.opacity = 0;
                    macol1b3.opacity = 0;
                    macol3b3.opacity = 0;
                    macol4b1.opacity = 0;
                    countCorrect = 2;
                    //-----------------------------------------

                        numberArray[1]=17//8;
                        numberArray[2]=16;
                        numberArray[3]=8//17;
                        numberArray[4]=18;
                        numberArray[5]=15;
                        numberArray[6]=9;
                        numberArray[7]=7;
                        numberArray[8]=19;
                        numberArray[9]=14;
                        numberArray[10]=10;
                        numberArray[11]=6;
                        numberArray[12]=1;
                        numberArray[13]=13;
                        numberArray[14]=11;
                        numberArray[15]=5;
                        numberArray[16]=2;
                        numberArray[17]=12;
                        numberArray[18]=4;
                        numberArray[19]=3;
                break;
          }
break;
        case 4://-----------------------------------Level3 Horizontal Sequence
            switch(level4r)
                {
                case 1: {

            //---------------------------------------
            //This part of the code is to display 3 hint numbers
            col3b1Text.text = 1;
            col4b1Text.text = 3;
            col1b1Text.text = 4;
            col3b1Text.visible = true;
            col4b1Text.visible = true;
            col1b1Text.visible = true;
            macol3b1.opacity = 0;
            macol4b1.opacity = 0;
            macol1b1.opacity = 0;
            countCorrect = 2;
            //-----------------------------------------

                        numberArray[1]=4;
                        numberArray[2]=9;
                        numberArray[3]=14;
                        numberArray[4]=2;
                        numberArray[5]=7;
                        numberArray[6]=12;
                        numberArray[7]=17;
                        numberArray[8]=1;
                        numberArray[9]=5;
                        numberArray[10]=10;
                        numberArray[11]=15;
                        numberArray[12]=19;
                        numberArray[13]=3;
                        numberArray[14]=8;
                        numberArray[15]=13;
                        numberArray[16]=18;
                        numberArray[17]=6;
                        numberArray[18]=11;
                        numberArray[19]=16;

        }
                break;
                case 2: {

            //---------------------------------------
            //This part of the code is to display 3 hint numbers
            col3b5Text.text = 1;
            col4b4Text.text = 3;
            col1b3Text.text = 4;
            col3b5Text.visible = true;
            col4b4Text.visible = true;
            col1b3Text.visible = true;
            macol3b5.opacity = 0;
            macol4b4.opacity = 0;
            macol1b3.opacity = 0;
            countCorrect = 2;
            //-----------------------------------------


                        numberArray[1]=14;
                        numberArray[2]=9;
                        numberArray[3]=4;
                        numberArray[4]=17;
                        numberArray[5]=12;
                        numberArray[6]=7;
                        numberArray[7]=2;
                        numberArray[8]=19;
                        numberArray[9]=15;
                        numberArray[10]=10;
                        numberArray[11]=5;
                        numberArray[12]=1;
                        numberArray[13]=18;
                        numberArray[14]=13;
                        numberArray[15]=8;
                        numberArray[16]=3;
                        numberArray[17]=16;
                        numberArray[18]=11;
                        numberArray[19]=6;

        }
                break;
                case 3: {

            //---------------------------------------
            //This part of the code is to display 3 hint numbers
            col3b1Text.text = 1;
            col2b1Text.text = 3;
            col5b1Text.text = 4;
            col3b1Text.visible = true;
            col2b1Text.visible = true;
            col5b1Text.visible = true;
            macol2b1.opacity = 0;
            macol3b1.opacity = 0;
            macol5b1.opacity = 0;
            countCorrect = 2;
            //-----------------------------------------


                        numberArray[1]=6;
                        numberArray[2]=11;
                        numberArray[3]=16;
                        numberArray[4]=3;
                        numberArray[5]=8;
                        numberArray[6]=13;
                        numberArray[7]=18;
                        numberArray[8]=1;
                        numberArray[9]=5;
                        numberArray[10]=10;
                        numberArray[11]=15;
                        numberArray[12]=19;
                        numberArray[13]=2;
                        numberArray[14]=7;
                        numberArray[15]=12;
                        numberArray[16]=17;
                        numberArray[17]=4;
                        numberArray[18]=9;
                        numberArray[19]=14;

        }
                break;
                case 4: {

            //---------------------------------------
            //This part of the code is to display 3 hint numbers
            col3b5Text.text = 1;
            col2b4Text.text = 3;
            col5b3Text.text = 4;
            col3b5Text.visible = true;
            col2b4Text.visible = true;
            col5b3Text.visible = true;
            macol2b4.opacity = 0;
            macol3b5.opacity = 0;
            macol5b3.opacity = 0;
            countCorrect = 2;
            //-----------------------------------------


                        numberArray[1]= 16;
                        numberArray[2]= 11;
                        numberArray[3]= 6;
                        numberArray[4]= 18;
                        numberArray[5]= 13;
                        numberArray[6]= 8;
                        numberArray[7]= 3;
                        numberArray[8]= 19;
                        numberArray[9]= 15;
                        numberArray[10]=10;
                        numberArray[11]=5;
                        numberArray[12]=1;
                        numberArray[13]=17;
                        numberArray[14]=12;
                        numberArray[15]=7;
                        numberArray[16]=2;
                        numberArray[17]=14;
                        numberArray[18]=9;
                        numberArray[19]=4;

        }
                break;

        }
            break;
        case 5://-----------------------------------Level5 V shape and V shape Snake
            switch(level5r)
                {
                case 1: {

                    //---------------------------------------
                    //This part of the code is to display 3 hint numbers
                    col1b3Text.text = 1;
                    col5b3Text.text = 5;
                    col2b3Text.text = 7;
                    col1b1Text.text = 11;
                    col1b3Text.visible = true;
                    col5b3Text.visible = true;
                    col2b3Text.visible = true;
                    col1b1Text.visible = true;

                    macol1b3.opacity = 0;
                    macol5b3.opacity = 0;
                    macol2b3.opacity = 0;
                    macol1b1.opacity = 0;
                    countCorrect = 2;
                    //-----------------------------------------

                        numberArray[1]=11;
                        numberArray[2]=6;
                        numberArray[3]=1;
                        numberArray[4]=16;
                        numberArray[5]=12;
                        numberArray[6]=7;
                        numberArray[7]=2;
                        numberArray[8]=19;
                        numberArray[9]=17;
                        numberArray[10]=13;
                        numberArray[11]=8;
                        numberArray[12]=3;
                        numberArray[13]=18;
                        numberArray[14]=14;
                        numberArray[15]=9;
                        numberArray[16]=4;
                        numberArray[17]=15;
                        numberArray[18]=10;
                        numberArray[19]=5;

        }
                break;
                case 2: {

            //---------------------------------------
            //This part of the code is to display 3 hint numbers
            col1b1Text.text = 1;
            col4b1Text.text = 4;
            col1b2Text.text = 6;
            col1b1Text.visible = true;
            col4b1Text.visible = true;
            col1b2Text.visible = true;
            macol1b1.opacity = 0;
            macol4b1.opacity = 0;
            macol1b2.opacity = 0;
            countCorrect = 2;
            //-----------------------------------------


                        numberArray[1]=1;
                        numberArray[2]=6;
                        numberArray[3]=11;
                        numberArray[4]=2;
                        numberArray[5]=7;
                        numberArray[6]=12;
                        numberArray[7]=16;
                        numberArray[8]=3;
                        numberArray[9]=8;
                        numberArray[10]=13;
                        numberArray[11]=17;
                        numberArray[12]=19;
                        numberArray[13]=4;
                        numberArray[14]=9;
                        numberArray[15]=14;
                        numberArray[16]=18;
                        numberArray[17]=5;
                        numberArray[18]=10;
                        numberArray[19]=15;

        }
                break;
                case 3: {

                    //---------------------------------------
                    //This part of the code is to display 3 hint numbers
                    col5b1Text.text = 1;
                    col3b1Text.text = 3;
                    col4b2Text.text = 9;
                    col1b3Text.text = 15;
                    col5b1Text.visible = true;
                    col3b1Text.visible = true;
                    col4b2Text.visible = true;
                    col1b3Text.visible = true;

                    macol5b1.opacity = 0;
                    macol3b1.opacity = 0;
                    macol4b2.opacity = 0;
                    macol1b3.opacity = 0;
                    countCorrect = 2;
                    //-----------------------------------------

                        numberArray[1]=5;
                        numberArray[2]=6;
                        numberArray[3]=15;
                        numberArray[4]=4;
                        numberArray[5]=7;
                        numberArray[6]=14;
                        numberArray[7]=16;
                        numberArray[8]=3;
                        numberArray[9]=8;
                        numberArray[10]=13;
                        numberArray[11]=17;
                        numberArray[12]=19;
                        numberArray[13]=2;
                        numberArray[14]=9;
                        numberArray[15]=12;
                        numberArray[16]=18;
                        numberArray[17]=1;
                        numberArray[18]=10;
                        numberArray[19]=11;

        }
                break;

                case 4: {

                    //---------------------------------------
                    //This part of the code is to display 3 hint numbers
                    col5b3Text.text = 1;
                    col3b5Text.text = 3;
                    col4b3Text.text = 9;
                    col1b1Text.text = 15;
                    col5b3Text.visible = true;
                    col3b5Text.visible = true;
                    col4b3Text.visible = true;
                    col1b1Text.visible = true;

                    macol5b3.opacity = 0;
                    macol3b5.opacity = 0;
                    macol4b3.opacity = 0;
                    macol1b1.opacity = 0;
                    countCorrect = 2;
                    //-----------------------------------------

                        numberArray[1]=15;
                        numberArray[2]=6;
                        numberArray[3]=5;
                        numberArray[4]=16;
                        numberArray[5]=14;
                        numberArray[6]=7;
                        numberArray[7]=4;
                        numberArray[8]=19;
                        numberArray[9]=17;
                        numberArray[10]=13;
                        numberArray[11]=8;
                        numberArray[12]=3;
                        numberArray[13]=18;
                        numberArray[14]=12;
                        numberArray[15]=9;
                        numberArray[16]=2;
                        numberArray[17]=11;
                        numberArray[18]=10;
                        numberArray[19]=1;

        }
                break;
    }
}
}
