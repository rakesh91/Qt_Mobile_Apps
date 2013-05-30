var showQ;//The question string
var sampleQ="STUDENT FORUM NOKIA";//example string
var sampleA;//example string Answer
var showA;
var ushowA;
var resstring;
var score=0;
var help=0;

var category;//string for different categories
var level;//string for different level
var bol;
var starcount=0;

var prime=[2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107];
var fibo=[0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946,17711,28657,46368,75025];
var series=[1,-1,2,-2,3,-3,4,-4,5,-5,6,-6,7,-7,8,-8,9,-9,10,-10,11,-11,12,-12,13,-13];
var position=[2,5,9,14,20,27];
var even=[0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30];
var odd=[1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31];



function test()//function to test the string
{
 ushowA.toUpperCase()
if(ushowA.toUpperCase()==showQ)
{bol=1;//true go to correct state


    if(level==1)
        {
   if(starcount==0)
    score=score+3;
   else if(starcount==1)
       score=score+2;
   else if(starcount==2)
       score=score+1;
    }
    else if(level==2)
    {
if(starcount==0)
score=score+4;
else if(starcount==1)
   score=score+3;
else if(starcount==2)
   score=score+2;
}
    else if(level==3)
    {
if(starcount==0)
score=score+5;
else if(starcount==1)
   score=score+4;
else if(starcount==2)
   score=score+3;
}

}
else
bol=0;//false go to wrong state
console.log(ushowA)
console.log(showQ)
}


function cricket()
{

var cricArray = new Array(40);

cricArray[0]="YUVRAJ SINGH";
 cricArray[1]="SACHIN TENDULKAR";
 cricArray[2]="SOURAV GANGULY";
 cricArray[3]="RAHUL DRAVID";
 cricArray[4]="KUMAR SANGAKKARA";
 cricArray[5]="MAHENDRA SINGH DHONI";
 cricArray[6]="ZAHEER KHAN";
 cricArray[7]="VIRAT KOHLI";
 cricArray[8]="RICKY PONTING";
 cricArray[9]="BRIAN LARA";
 cricArray[10]="SHANE WARNE";
 cricArray[11]="KAPIL DEV";
 cricArray[12]="ADAM GILCHRIST";
 cricArray[13]="STEVE WAUGH";
 cricArray[14]="WASIM AKRAM";
 cricArray[15]="WAQAR YOUNIS";
 cricArray[16]="JACQUES KALLIS";
 cricArray[17]="ROSS TAYLOR";
 cricArray[18]="ANDREW FLINTOFF";
 cricArray[19]="KEVIN PIETERSEN";
 cricArray[20]="MAHELA JAYAWARDENE";
 cricArray[21]="CHRIS GAYLE";
 cricArray[22]="LASITH MALINGA";
 cricArray[23]="SHAUN POLLOCK";
 cricArray[24]="ALLAN DONALD";
 cricArray[25]="STEPHEN FLEMING";
 cricArray[26]="SANATH JAYASURIYA";
 cricArray[25]="MUTTIAH MURALIDHARAN";
 cricArray[26]="MICHAEL HUSSEY";
 cricArray[27]="INZAMAM UL HAQ";
 cricArray[28]="GARY KIRSTEN";
 cricArray[29]="ANDY FLOWER";
 cricArray[30]="BRETT LEE";
 cricArray[31]="GLENN MCGRATH";
 cricArray[32]="JOHN WRIGHT";
 cricArray[33]="VVS LAXMAN";
 cricArray[34]="SHOIAB AKHTAR";
 cricArray[35]="SHAHID AFRIDI";
 cricArray[36]="DANIEL VETTORI";
 cricArray[37]="CURTLY AMBROSE";
 cricArray[38]="VIRENDER SEHWAG";
 cricArray[39]="DON BRADMAN";

 var r= (Math.floor(Math.random()*100)%40);

showQ=cricArray[r];
////document.write(showQ);
 }

 function Football()
 {

   var footArray = new Array(40);

footArray[0]="CARLOS TEVEZ";
footArray[1]="CRISTIANO RONALDO";
footArray[2]="WAYNE ROONEY";
footArray[3]="DAVID BECKHAM";
footArray[4]="RONALDINHO";
footArray[5]="LIONEL MESSI";
footArray[6]="ROBIN VAN PERSIE";
footArray[7]="DAVID VILLA";
footArray[8]="DIEGO MARADONA";
footArray[9]="PELE";
footArray[10]="ZINEDINE ZIDINE";
footArray[11]="MICHAEL BALLACK";
footArray[12]="FRANK LAMPARD";
footArray[13]="STEVEN GERRARD";
footArray[14]="DIDIER DROGBA";
footArray[15]="EDWIN VAN DER SAR";
footArray[16]="PARK JI SUNG";
footArray[17]="PETER CROUCH";
footArray[18]="DARREN BENT";
footArray[19]="LUIS SUAREZ";
footArray[20]="DIEGO FORLAN";
footArray[21]="ROBINHO";
footArray[22]="KAKA";
footArray[23]="THOMAS MULLER";
footArray[24]="SERGIO RAMOS";
footArray[25]="FRANK RIBERY";
footArray[26]="ANGEL DI MARIA";
footArray[27]="ARJEN ROBBEN";
footArray[28]="ANDRES INIESTA";
footArray[29]="HARRY KEWELL";
footArray[30]="JOSE MOURINHO";
footArray[31]="MICHAEL OWEN";
footArray[32]="MESUT OZIL";
footArray[33]="PAULO DI CANIO";
footArray[34]="FABIO CANNAVARO";
footArray[35]="ALEXANDRO DEL PIERO";
footArray[36]="PAULO MALDINI";
footArray[37]="SAMIR NASRI";
footArray[38]="RAFAEL VAN DER VAART";
footArray[39]="HARRY REDKNAPP";


var r= (Math.floor(Math.random()*100)%40);
 showQ=footArray[r];

 }

function Games()
{

var gamesArray = new Array(40);

    gamesArray[0] = "PRINCE OF PERSIA"
    gamesArray[1] = "GOD OF WAR"
    gamesArray[2] = "GEARS OF WAR"
    gamesArray[3] = "ASSASINS CREED"
    gamesArray[4] = "CALL OF DUTY"
    gamesArray[5] = "COUNTER STRIKE"
    gamesArray[6] = "GRAND THEFT AUTO"
    gamesArray[7] = "PORTAL"
    gamesArray[8] = "DRAGON BALLZ"
    gamesArray[9] = "POKEMON"
    gamesArray[10] = "QUAKE"
    gamesArray[11] = "DOOM"
    gamesArray[12] = "HALF LIFE"
    gamesArray[13] = "ROAD RASH"
    gamesArray[14] = "NEED FOR SPEED"
    gamesArray[15] = "MODERN WARFARE"
    gamesArray[16] = "SUPER MARIO"
    gamesArray[17] = "PLANTS VERSUS ZOMBIES"
    gamesArray[18] = "SUPER MEAT BOY"
    gamesArray[19] = "FARMVILLE"
    gamesArray[20] = "ANGRY BIRDS"
    gamesArray[21] = "NINJA RUN"
    gamesArray[22] = "PRO EVOLUTION SOCCER"
    gamesArray[23] = "SIM CITY"
    gamesArray[24] = "MOTOCROSS MADNESS"
    gamesArray[25] = "AGE OF EMPIRES"
    gamesArray[26] = "HALO"
    gamesArray[27] = "AGE OF MYTHOLOGY"
    gamesArray[28] = "WORLD WAR CRAFT"
    gamesArray[29] = "DAVE"



 var r= (Math.floor(Math.random()*100)%30);

showQ=gamesArray[r];
////document.write(showQ);
 }


 function Movie()
 {
  var movieArray = new Array(40);

movieArray[0]="INDEPENDENCE DAY";
movieArray[1]="TOY STORY";
movieArray[2]="MISSION IMPOSSIBLE";
movieArray[3]="THE EXPENDABLES";
movieArray[4]="TITANIC";
movieArray[5]="TERMINATOR";
movieArray[6]="QUANTUM OF SOLACE";
movieArray[7]="SHAWSHANK REDEMPTION ";
movieArray[8]="PERSUIT OF HAPPYNESS";
movieArray[9]="THE SOCIAL NETWORK";
movieArray[10]="DARK KNIGHT";
movieArray[11]="AVATAR";
movieArray[12]="PIRATES OF CARRIBEAN";
movieArray[13]="FINAL DESTINATION";
movieArray[14]="FAST AND FURIOUS";
movieArray[15]="MATRIX RELOADED";
movieArray[16]="TRANSFORMERS";
movieArray[17]="FACE OFF";
movieArray[18]="SPIDERMAN";
movieArray[19]="THE CHRONICLES OF NARNIA";
movieArray[20]="HARRY POTTER";
movieArray[21]="BRUCE ALMIGHTY";
movieArray[22]="INCEPTION";
movieArray[23]="ENTER THE DRAGON";
movieArray[24]="ICE AGE";
movieArray[25]="SHREK";
movieArray[26]="PRINCE OF PERSIA";
movieArray[27]="HURT LOCKER";
movieArray[28]="SHUTTER ISLAND";
movieArray[29]="KUNG FU PANDA";
movieArray[30]="BEAUTIFUL MIND";
movieArray[31]="HANGOVER";
movieArray[32]="TWILIGHT";
movieArray[33]="INGLORIOUS BASTARDS";
movieArray[34]="JURASSIC PARK";
movieArray[35]="HOME ALONE";
movieArray[36]="LORD OF THE RINGS";
movieArray[37]="BLOOD DIAMOND";
movieArray[38]="SHANGHAI KNIGHTS";
movieArray[39]="STAR WARS"

var r= (Math.floor(Math.random()*100)%40);
 showQ=movieArray[r];
}


function Famous()//check mod..change 21 to 40
 {
  var famousArray = new Array(40);

famousArray[0]="BARACK OBAMA";
famousArray[1]="MAHATMA GANDHI";
famousArray[2]="MARTIN LUTHER KING JR";
famousArray[3]="ABRAHAM LINCHOLN";
famousArray[4]="MOTHER THERESA";
famousArray[5]="STEVE JOBS";
famousArray[6]="BILL GATES";
famousArray[7]="MARK ZUCKERBURG";
famousArray[8]="NELSON MANDELA";
famousArray[9]="ALBERT EINSTEIN";
famousArray[10]="IISAC NEWTON";
famousArray[11]="WALT DISNEY";
famousArray[12]="STEVEN SPEILBERG";
famousArray[13]="LEONARDO DA VINCI";
famousArray[14]="PABLO PICASSO";
famousArray[15]="ROGER FEDERER";
famousArray[16]="VISHWANATHAN ANAND";
famousArray[17]="ALLAN TURING";
famousArray[18]="C V RAMAN";
famousArray[19]="MICHAEL SCHUMACHER";
famousArray[20]="NEIL ARMSTRONG";
famousArray[21]="MICHAEL JACKSON";
famousArray[22]="NADAL DJOKOVIC";
famousArray[23]="MARIE CURIE";
famousArray[24]="THOMAS EDISON";
famousArray[25]="SHAKESPEARE";
famousArray[26]="BILL CLINTON";
famousArray[27]="ALEXANDER GRAHAM BELL Alexander";
famousArray[28]="NAPOLEON";
famousArray[29]="LEONARDO DA VINCI";
famousArray[30]="LOUIS PASTEUR";
famousArray[31]="MICHELANGELO";
famousArray[32]="J K ROWLING";
famousArray[33]="DAN BROWN";
famousArray[34]="A R RAHMAN";
famousArray[35]="EISENHOWER";
famousArray[36]="ELIZABETH TAYLOR";
famousArray[37]="ARISTOTLE";
famousArray[38]="GEORGE WASHINGTON"

var r= (Math.floor(Math.random()*100)%21);
 showQ=famousArray[r];



 }



function level1()
{
console.log("bandbitte level1")
var r=(Math.floor(Math.random()*10)%8);

switch(r)
{
case 0:level1fn0();
break;
case 1:level1fn1();
break;
case 2:level1fn2();
break;
case 3:level1fn3();
break;
case 4:level1fn4();
break;
case 5:level1fn5();
break;
case 6:level1fn6();
break;
case 7:level1fn7();
break;
}

}

function level1fn0()//+2
{
var ch=new Array(26);
var ch1=new Array(26);
//document.write("level11");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+2;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}

}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);

for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+2;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}


function level1fn1()//-1
{
var ch=new Array(26);
var ch1=new Array(26);
//document.write("level12");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)-1;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}

}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);

for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)-1;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level1fn2()//+-1
{
 var t=-1;
var ch=new Array(26);
var ch1=new Array(26);
//document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t*(-1);
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    t=t*(-1);
}

}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
t=-1;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t*(-1);
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    t=t*(-1);
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level1fn3()//+-2
{
 var t=-2;
var ch=new Array(26);
var ch1=new Array(26);
////document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t*(-1);
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    t=t*(-1);
}

}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
t=-2;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t*(-1);
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    t=t*(-1);
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level1fn4()//+1
{
var ch=new Array(26);
var ch1=new Array(26);
////document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+1;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}

}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);

for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+1;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level1fn5()//-2
{
var ch=new Array(26);
var ch1=new Array(26);
////document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)-2;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}

}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);

for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)-2;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level1fn6()//+3
{
var ch=new Array(26);
var ch1=new Array(26);
////document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+3;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}

}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);

for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+3;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level2fn4()//addition of 2 in particular position,CHECK FOR SPACES
{
var n=0;
var ch=new Array(26);
var ch1=new Array(26);
//document.write("level11");
var er;
    var p=0;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{

if(position[n]==p)
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{p++;
    var k=sampleQ.charCodeAt(er)+2;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
n--;
}
n++;
}

else
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{p++;
    var k=sampleQ.charCodeAt(er);

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}
}

}
sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
n=0;p=0;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(position[n]==p)
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{p++;
    var k=showQ.charCodeAt(er)+2;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
n--;
}
n++;
}

else
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er);
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}
}


}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}



function level2()
{

var r=5;//  (Math.floor(Math.random()*10)%8);

switch(r)
{
case 0:level2fn0();
break;
case 1:level2fn1();
break;
case 2:level2fn2();
break;
case 3:level2fn3();
break;
case 4:level2fn4();
break;
case 5:level2fn5();
break;
case 6:level2fn6();
break;
case 7:level2fn7();
break;
}

}


function level2fn0()//AP d=1 a=-11
{
 var t=-11;
var ch=new Array(26);
var ch1=new Array(26);
////document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t+(1);
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    t--;
}

}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
t=-11;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t+(1);
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    t--;
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level2fn1()//AP d=2 a=22
{
 var t=-22;
var ch=new Array(26);
var ch1=new Array(26);
////document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t+(2);
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    t=t-2;
}

}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
t=-22;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t+(2);
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    t=t-2;
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level2fn2()//addition of 1 -2 +3 -4CHANGE THE IMPLEMENTATION
{
 var t=-1;
 var e=1;
    var y;
var ch=new Array(26);
var ch1=new Array(26);
////document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t*(-1);
y=e*t;
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+y;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    t=t*(-1);
    e--;
}
e=e+1;
}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
t=-1;
e=1
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t*(-1);
y=e*t;
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+y;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    t=t*(-1);
    e--;
}
e=e+1;
}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level2fn3()//1,-1,2,-2,3,-3
{

var ch=new Array(26);
var ch1=new Array(26);
//document.write("level11");
var er;
    var n=0;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+series[n];
n++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}

}
sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
n=0;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+series[n];
n++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level1fn7()//+-3
{
 var t=-3;
var ch=new Array(26);
var ch1=new Array(26);
////document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t*(-1);
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    t=t*(-1);
}

}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
t=-3;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t*(-1);
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    t=t*(-1);
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level2fn5()//ODD number addition in their respective position and rest by 0
{
var n=0;
var ch=new Array(26);
var ch1=new Array(26);
//document.write("level11");
    var p=0;
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{

if(odd[n]==p)
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+odd[n];
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    n--;
}
n++;
}

else
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+0;
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}
}

}
sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
n=0;
p=0;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(odd[n]==p)
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+odd[n];
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    n--;
}
n++;
}

else
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+0;
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}
}


}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level2fn6()//addition of 1,-3,+5,-7CHANGE THE IMPLEMENTATION
{
 var t=-1;
 var e=1;
    var y;
var ch=new Array(26);
var ch1=new Array(26);
////document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t*(-1);
y=e*t;
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+y;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    e=e-2;
    t=t*(-1);
}
e=e+2;
}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
t=-1;
e=1
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=t*(-1);
y=e*t;
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+y;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    e=e-2;
    t=t*(-1);
}
e=e+2;
}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level2fn7()//addition of 0,3,6,9,12,15
{
 var t=1;
 var e=0;
var ch=new Array(26);
var ch1=new Array(26);
////document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{

if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+e;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
   e=e-3;
}
e=e+3;
}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
t=1;
e=0;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{

if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+e;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}

if(k<65)
{
k=k+26;
}

ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    e=e-3;
}
e=e+3;
}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}


function level3()
{

var r=(Math.floor(Math.random()*10)%8);


switch(r)
{
case 0:level3fn0();
break;
case 1:level3fn1();
break;
case 2:level3fn2();
break;
case 3:level3fn3();
break;
case 4:level3fn4();
break;
case 5:level3fn5();
break;
case 6:level3fn6();
break;
case 7:level3fn7();
break;
}

}

function level3fn0()//change in alternate characters and incriment  by 3//CHANGE THIS FUNCTION OR PUT IT IN LEVEL 2
{
 var t=3;var n=0;
var ch=new Array(26);
var ch1=new Array(26);
////document.write("level1");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=3;

if(n%2==1)
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{n++;
    var k=sampleQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}
}
else
{
    n++;
ch[er]=sampleQ[er];
}
}sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
t=3;n=0;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{ t=3;

if(n%2==1)
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{n++;
    var k=showQ.charCodeAt(er)+t;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}
}
else
{
    n++;
ch[er]=showQ[er];
}
}showA=ch.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level3fn1()//2n+1//REPLACE THIS FUNCTION OR CHECK FOR ANY ERROR IN IMPLEMENTATION
{
var n=-10;
var ch=new Array(26);
var ch1=new Array(26);
//document.write("level11");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+(2*n+1);

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}


ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    n--;
}
n++;
}
sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
n=-10;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+(2*n+1);

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    n--;
}
n++;
}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level3fn2()//prime number addition//REPLACE THIS FUNCTION OR CHECK FOR ANY ERROR IN IMPLEMENTATION
{

var ch=new Array(26);
var ch1=new Array(26);
//document.write("level11");
var er;var n=0;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+prime[n];
n++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';

}

}
sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
n=0;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+prime[n];
n++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level3fn3()//fibo//REPLACE THIS FUNCTION OR CHECK FOR ANY ERROR IN IMPLEMENTATION
{

var ch=new Array(26);
var ch1=new Array(26);
//document.write("level11");
var er;
 var n=0;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+fibo[n];
n++;
if(k>90)
{

k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}

}
sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
n=0;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+fibo[n];
n++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}

}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level3fn4()//prime number addition in their respective position and rest by 1//CHANGE THE IMPLEMENTATION
{
var n=0;
var ch=new Array(26);
var ch1=new Array(26);
//document.write("level11");
    var p=0;
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{

if(prime[n]==p)
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+prime[n];
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    n--;
}
n++;
}

else
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+1;
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}
}

}
sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
n=0;
p=0;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(prime[n]==p)
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+prime[n];
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    n--;
}
n++;
}

else
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+1;
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}
}


}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}


function level3fn5()//addition of -3 in particular position and rest by 2//REPLACE THIS FUNCTION OR CHECK FOR ANY ERROR IN IMPLEMENTATION
{
var n=0;
var ch=new Array(26);
var ch1=new Array(26);
//document.write("level11");
var er;
    var p=0;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{

if(position[n]==p)
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)-3;
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    n--;
}
n++;
}

else
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+2;
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}
}

}
sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
n=0;
p=0;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(position[n]==p)
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)-3;
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    n--;
}
n++;
}

else
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+2;
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}
}


}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level3fn6()//n*nREPLACE THIS FUNCTION OR CHECK FOR ANY ERROR IN IMPLEMENTATION
{
var n=0;
var ch=new Array(26);
var ch1=new Array(26);
//document.write("level11");
var er;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+(n*n);

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    n--;
}
n++;
}
sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
n=0;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+(n*n);

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    n--;
}
n++;
}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}

function level3fn7()//even number addition in their respective position and rest by 1//CHANGE THE IMPLEMENTATION
{
var n=0;
var ch=new Array(26);
var ch1=new Array(26);
//document.write("level11");
var er;
    var p=0;
for(er=0;er<sampleQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{

if(even[n]==p)
{

if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+even[n];
p++;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
    n--;
}
n++;
}

else
{
if(sampleQ.charCodeAt(er)>=65 && sampleQ.charCodeAt(er)<=90)
{var k=sampleQ.charCodeAt(er)+1;
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch[er]=String.fromCharCode(k);
}
else
{
ch[er]=' ';
}
}

}
sampleA=ch.toString();
sampleA=sampleA.replace(/,/gi,"");

//document.write("<br>"+sampleA);
n=0;
p=0;
for(er=0;er<showQ.length;er++)//noteeeeeeeeeee -------- find func for length of string
{
if(even[n]==p)
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+even[n];
p++;
if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
    n--;
}
n++;
}

else
{
if(showQ.charCodeAt(er)>=65 && showQ.charCodeAt(er)<=90)
{var k=showQ.charCodeAt(er)+1;
    p++;

if(k>90)
{
k=((k-64)%26)+64;
    if(k==64)
        {
        k=90;
    }
}
if(k<65)
{
k=k+26;
}
ch1[er]=String.fromCharCode(k);
}
else
{
ch1[er]=' ';
}
}


}
showA=ch1.toString();
showA=showA.replace(/,/gi,"");

//document.write("<br>"+showA);

}
