<%-- 
    Document   : NBY
    Created on : 2 May, 2017, 11:45:56 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.net.*"%>
<%@page import ="java.io.*"%>

<!DOCTYPE html>
<html onclick = "detectClick()">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.selector{
    position : absolute;
    background-color : grey;
    margin-top : -65px;
    height : 61px;
    width : 720px; 
    opacity : 0.7;
    border : 1px solid #ddd;
    margin-left : 249px;
    border-radius : 6px;
    z-index : 2;
}


#file {
    position : absolute;
    background-position : 10px 12px;
    border-radius : 4px;
    margin-top : -55px;
    margin-left : 250px;
    height : 33px;
    width : 700px; 
    font-size : 16px;
    border : 3px;
    margin-bottom : 0px;
}

#drop-down{
    position : absolute;
    height : 265px;
    width : 703px;
    padding : 0;
    margin : 0;
    margin-left : 250px;
    margin-top : -19px;
    overflow : auto;
    z-index : 2;
}

.drop-li{
    border : 1px solid #ddd;
    background-color : black;
    margin-top : -1px;
    margin-left : -2px;
    width : 660px;
    padding : 20px; 
    font-size : 18px;
    color : white;
    display : block;
    z-index : 2;
}

.drop-li:hover{
    background-color : grey;
    z-index : 2;
}



div.text1{
    margin-top : -8px;
    margin-left : 15px; 
}

div.text4{
    margin-top : -60px;
    margin-left : 40px; 
}

#font1{
   font-size: 30px;
   color : white;
   letter-spacing : 4px;  
   font-family : FreeSans;
}

#font2{
   font-size: 23px;
   color : white;
   letter-spacing : 3px;  
   font-family : FreeSans;
}

div.text2A {
    width : 22px;
    height : 5px;
    background-color : red;
    -moz-transform : rotateZ(300deg);
    margin-top : -40px;    
    margin-left : 76px;
}

div.text2AA {
    width : 19px;
    height : 5px;
    background-color : red;
    -moz-transform : rotateZ(240deg);
    margin-top : -4px;    
    margin-left : 88px;
}

div.text3{
    position : relative;
    margin-top : -48px; 
    margin-left : 108px;
}

#image1{
    position : absolute;
    margin-top : -190px;
    margin-left : 500px;
    display : inline;
    height : 250px;
    border-radius : 60px;
}

.button {
  position : absolute;
  top : 16px;
  margin-left : 954px;   
  border-radius : 4px;
  background-color : #f4511e;
  border : none;
  color : #FFFFFF;
  text-align : center;
  font-size : 25px;
  padding : 5px;
  width : 180px;
  height : 35px;
  transition : all 0.5s;
  cursor : pointer;
}

.button span {
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 19px;
  right: -10px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: -60px;
  top : 19px;
}

#search{
  margin-left : -15px;
  margin-top : -5px;
}

div.line1
{
    background-attachment: fixed;
    position : absolute;
    width : 1365px;
    height : 1px;
    background-color : white;
    margin-top : -6px;    
    margin-left : -7px;
    opacity : 0.2;
}

div.line2
{
    position : relative;
    width : 1365px;
    height : 1px;
    background-color : white;
    margin-top : 66px;    
    margin-left : -7px;
    opacity : 0.2;
}

div.line3
{
    position : absolute;
    width : 195px;
    height : 1px;
    background-color : white;
    margin-top : 180px;    
    margin-left : 7px;
    opacity : 0.4;
}

div.line4
{
    position : absolute;
    width : 195px;
    height : 1px;
    background-color : white;
    margin-top : 230px;    
    margin-left : 7px;
    opacity : 0.4;
}

div.line5
{
    position : absolute;
    width : 195px;
    height : 1px;
    background-color : white;
    margin-top : 520px;    
    margin-left : 7px;
    opacity : 0.4;
}

#Fboxdrop {
    position: relative;
    display: inline-block;
    position:absolute;
    font-size : 20px; 
    color : white;
    margin-top : 10px ;
    margin-left : 16px;
}

#Fboxlist {
    display: none;
    margin-left : -3px;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    z-index: 1;
}

#Fboxlist a {
    color: black;
    padding: 8px;
    text-decoration: none;
    font-size : 15px;
    font-family : sans-serif;
    display: block;
}

#Fboxlist a:hover {background-color: #f1f1f1}

#Fboxdrop:hover #Fboxlist {
    display: block;
}

#Fbox {
  position : absolute;
  top : -10px;
  margin-left : -68px;
  border-radius : 2px;
  background-color : #D3D3D3;
  border : none;
  width : 80px;
  height : 33px;
  cursor : pointer;
  opacity : 0;
}

#Domainlist {
    display : none;
    margin-left : 13px;
    margin-top : 88px;
    position : absolute;
    background-color : #f9f9f9;
    min-width : 160px;
    z-index : 1;
}

#Domainlist a {
    color: black;
    padding: 8px;
    text-decoration: none;
    font-size : 15px;
    font-family : sans-serif;
    display: block;
}

#Domainlist a:hover {background-color: #f1f1f1}

#Domain:hover #Domainlist {
    display: block;
}

#domain {
  position : absolute;
  top : 126px;
  margin-left : 13px;
  border-radius : 2px;
  background-color : #f2f2f2;
  border : none;
  width : 120px;
  height : 33px;
  cursor : pointer;
}

#Cubelist {
    display : none;
    margin-left : 250px;
    margin-top : 37px;
    position : absolute;
    background-color : #f9f9f9;
    min-width : 160px;
    z-index : 3;
}

#Cubelist a {
    color: black;
    padding: 8px;
    text-decoration: none;
    font-size : 15px;
    font-family : sans-serif;
    display: block;
    cursor:pointer;
}

#Cubelist a:hover {background-color: #f1f1f1}

#Cube:hover #Cubelist {
    display: block;
}

#Moreklist {
    display : none;
    border-radius : 5px;
    margin-left : 450px;
    margin-top : 38px;
    position : absolute;
    background-color : black;
    min-width : 160px;
    z-index : 3;
}

#Moreklist a {
    color: white;
    padding: 8px;
    text-decoration: none;
    font-size : 15px;
    font-family : sans-serif;
    display: block;
    cursor:pointer;
}

#Moreklist p {
    color: white;
    text-decoration: none;
    font-size : 15px;
    font-family : sans-serif;
    display: block;
    cursor:pointer;
}


#Moreklist a:hover {background-color: grey}

#Moreklist p:hover {background-color: grey}

#moreklist:hover #Moreklist {
    display: block;
}


.refresh1 {
  position : absolute;
  top : 76px;
  margin-left : 350px;   
  border-radius: 2px;
  background-color: #D3D3D3;
  border: none;
  width: 80px;
  height : 33px;
  cursor: pointer;
  z-index : 2;
}

#Morei {
  position : absolute;
  margin-top : -10px;
  margin-left : 8px;   
  
 }

.more {
  position : absolute;
  top : 76px;
  margin-left : 450px;   
  border-radius: 2px;
  background-color: #D3D3D3;
  border: none;
  width: 80px;
  height : 33px;
  cursor: pointer;
  z-index : 2; 
}

.delete {
  position : absolute;
  top : 76px;
  margin-left : 532px;   
  border-radius: 2px;
  background-color: #D3D3D3;
  border: none;
  width: 80px;
  height : 33px;
  cursor: pointer;
  z-index : 2; 
  visibility : hidden;
}

.ListA {
  position : absolute;
  top : 75px;
  margin-left : 250px;   
  border-radius: 2px;
  background-color: #D3D3D3;
  border: none;
  width: 80px;
  height : 33px;
  cursor: pointer;
  z-index : 2;
}

.Settings {
  position : absolute;
  top : 75px;
  margin-left : 1235px;   
  border-radius: 2px;
  background-color: #D3D3D3;
  border: none;
  width: 80px;
  height : 33px;
  cursor: pointer;
}

#settingslist {
    display : none;
    border-radius : 5px;
    margin-left : 1155px;
    margin-top : 37px;
    position : absolute;
    background-color : black;
    min-width : 160px;
    z-index : 3;
}

#settingslist a {
    color: white;
    padding: 8px;
    text-decoration: none;
    font-size : 15px;
    font-family : sans-serif;
    display: block;
    cursor:pointer;
}

#settingslist a:hover {background-color: greenyellow}

#settingsl:hover #settingslist {
    display: block;
}

#themeslist {
    display : none;
    border-radius: 5px;
    margin-left : -160px;
    margin-top : -36px;
    position : absolute;
    background-color : red;
    min-width : 160px;
    z-index : 3;
}
#themesl:hover #themeslist{
    display : block;
}


.Forw1 {
  position : absolute;
  top : 75px;
  margin-left : 1176px;   
  border-radius: 0.5px;
  background-color: #D3D3D3;
  border: none;
  width: 40px;
  height : 33px;
  cursor: pointer;
}

.Forw2 {
  position : absolute;
  top : 75px;
  margin-left : 1135px;   
  border-radius: 0.5px;
  background-color: #D3D3D3;
  border: none;
  width: 40px;
  height : 33px;
  cursor: pointer;
}

.Tasks {
  position : absolute;
  top : 590px;
  margin-left : 1095px;   
  border-radius: 0.5px;
  background-color: #4E4B4B;
  border: none;
  width: 97px;
  height : 38px;
  cursor: pointer;
  z-index : 4;
  visibility : visible; 
}

.minimize1 {
  position : absolute;
  top : 590px;
  margin-left : 1230px;   
  border-radius: 0.5px;
  background-color: #4E4B4B;
  border: none;
  width: 35px;
  height : 38px;
  cursor: pointer;
  z-index : 4;  
  visibility : visible; 
}

.cross1 {
  position : absolute;
  top : 590px;
  margin-left : 1300px;   
  border-radius: 0.5px;
  background-color: #4E4B4B;
  border: none;
  width: 35px;
  height : 38px;
  cursor: pointer;
  z-index : 4;  
  visibility : visible; 
}

.pop1 {
  position : absolute;
  top : 590px;
  margin-left : 1265px;   
  border-radius: 0.5px;
  background-color: #4E4B4B;
  border: none;
  width: 35px;
  height : 38px;
  cursor: pointer;
  z-index : 4;  
  visibility : visible;
}

.plust {
  position : absolute;
  top : 590px;
  margin-left : 1192px;   
  border-radius: 0.5px;
  background-color: #4E4B4B;
  border: none;
  width: 38px;
  height : 38px;
  cursor: pointer;
  z-index : 4;  
  visibility : visible; 
}

#box1 {
  position : absolute;
  top : 5px;
  margin-left : -5px;   
  border-radius : 0.5px;
  background-color : grey;
  border : none;
  width : 30px;
  height : 28px;
  cursor : pointer;
  opacity : 0.5;
}
#box2 {
  position : absolute;
  top : 5px;
  margin-left : -5px;   
  border-radius : 0.5px;
  background-color : grey;
  border : none;
  width : 30px;
  height : 28px;
  cursor : pointer;
  opacity : 0.5;
}
#box3 {
  position : absolute;
  top : 5px;
  margin-left : -5px;   
  border-radius:  0.5px;
  background-color : grey;
  border : none;
  width : 30px;
  height : 28px;
  cursor : pointer;
  opacity : 0.5;
}

#box4 {
  position : absolute;
  top : 5px;
  margin-left : -5px;   
  border-radius:  0.5px;
  background-color : grey;
  border : none;
  width : 30px;
  height : 28px;
  cursor : pointer;
  opacity : 0.5;
}

#inbox{
position : absolute;
top : 175px;
margin-left : 14px;   
color : white;
font-size : 15px;
font-family : sans-serif;
cursor : pointer;
}

#starred{
position : absolute;
top : 200px;
margin-left : 14px; 
color : white;
font-size : 15px;
font-family : sans-serif;
cursor : pointer;
}

#morea{
position : absolute;
top : 223px;
margin-left : 14px; 
color : white;
font-size : 15px;
font-family : sans-serif;
cursor : pointer;
}

#cont{
position : absolute;
top : 500px;
margin-left : 25px;   
color : #D3D3D3;
font-size : 15px;
font-family : sans-serif;
cursor : pointer;
}

#Pane {
  position : absolute;
  top : 127px;
  margin-left : 250px;   
  border-radius: 0.5px;
  background-color: #D3D3D3;
  border: none;
  width: 260px;
  height : 38px;
  cursor: pointer;
}

.BList{
    position : absolute;
    background-color : black;
    margin-left : 250px;
    height : 40px;
    width : 1100px;
    opacity : 1;
    border: 1px solid grey;
    border-opacity : 0.1;
    text-align : left;
    z-index : 2;
}


.fnamee{
    position : absolute;
    margin-top : -21px;
    font-size : 18px;
    margin-left : -720px;
    color : whitesmoke;
    z-index : 1;
}


#valueS{
    position : absolute;
    float : right;
    color : white;
    font-size : 15px;
    margin-top : 11px;
    margin-left : 1050px;
}

.date{
    position : absolute;
    margin-top : -11px;
    margin-left : 800px;
    color : whitesmoke;    
}

#tk{
  position : absolute;
  height : 259px;
  width : 240px;
  padding : 0;
  margin : 0;
  margin-left : 1095px;
  margin-top : 290px;
  overflow-y: auto;
  z-index : 3;
}
#defau{
    position:relative;
}

.tk1-input {
  dragable:true;
  position : relative;
  background-position : 10px 12px;
  border: 1px solid black;
  margin-top : 0px;
  margin-left : 0px;
  height :33px;
  width : 420px; 
  font-size : 16px;
  font-color : black;
  margin-bottom : 0px;
  z-index : 1;  
}

#useless{
    position : absolute;
    margin-top : 187px;
    margin-left : 8px;
    height : 36px;
    width : 192px;
    background-color : #f4511e;   
}
</style>


<body  onload="refresh('lo')" onclick="detectClick()">
<div class = "text1"><h1><font id = "font1"> F </font></h1> </div>
<div class = "text4"><h1><font id = "font2"> SE </font></h1></div>
<div class = "text2A"> </div>
<div class = "text2AA"> </div>
<div class = "text3"><h1><font id = "font2"> RCH </font></h1></div>

<input type = "text" id = "file"  onkeyup = "reconnect(event,this.id)" autocomplete = "off" onclick = "alreadyu(this.id)"  oninput = "connectto()" onkeypress = "boxmodify(event)" placeholder = "Search for files.." onkeydown="openthefile(event)">

<div class = "drop" id = "drop" >
<ul id = 'drop-down' onmousedown = "remove(event)">
</ul>
</div>

<button class="button" id = "searcu" onclick="reconnect(event,this.id)"><span><div id = "search">Search </div></span></button>

<div class = "line1"> </div>
<div id = "Fboxdrop" >Fbox<i class="fa fa-caret-down" id = "arrow2" style="color : grey; font-size : 20px; margin-left : 3px; margin-top : 5px; position : absolute;">
<button class="Fbox" id = "Fbox"></button>
</i>
    <div id = "Fboxlist">
        <a onclick = "clickevents('Fboxlist')"> Fbox</a>
        <a onclick = "taskbar('Fboxlist')"> Tasks </a>
    </div>
</div>
<div id = "Domain">
<button class="domain" id = "domain">DOMAIN</button>
    <div id = "Domainlist">
        <a onclick = "clickevents('DomainlistF')"> File Based</a>
        <a onclick = "clickevents('DomainlistC')"> Context Based </a>
    </div>
</div>

<div class="inbox" id="inbox" onclick = "refresh('lo')">Inbox</div>
<div class="starred" id="starred"  onclick = "starc()">Starred</div>
<div class="morea" id="morea" onclick = "clickevents('DomainlistF')">Search</div>

<div id = "useless"></div>

<div class = "line3"> </div>
<i class="fa fa-folder-open" id = "DomainlistF" onclick = "clickevents('DomainlistF')" style="cursor : pointer; color : grey; font-size : 50px; margin-left : 35px; margin-top : 280px; position : absolute;"></i>
<i class="fa fa-clipboard" id = "DomainlistC" onclick = "clickevents('DomainlistC')" style="cursor : pointer; color : grey; font-size : 50px; margin-left : 75px; margin-top : 340px; position : absolute;"></i>
<div class="cont" id="cont" onclick = "clickevents('Fboxlist')">Start Searching File</div>
<div class = "line4"> </div>
<div class = "line5"> </div>

<button class = "refresh1" id = "refresh1"  onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)" onclick = "refresh('lo')">
<i class = "fa fa-repeat" id = "color" style = "color:grey;font-size:20px;margin-left:-12px;margin-top:-10px;position:absolute;"></i>
</button>
<div class = "moreklist" id = "moreklist">
<button class = "more" id = "more" onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)"><div id = "Morei">More</div>
<i class="fa fa-caret-down" id = "arrow2" style="color : grey; font-size : 20px; margin-left : 10px; margin-top : -10px; position : absolute;"></i>
</button>
    <div id = "Moreklist">
        <p> Select Files to know for more options</p>
    </div>
</div>
<button class = "delete" id = "delete" onclick="changevalues(this.id)" onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)">
<i class="fa fa-trash" id = "del" style="color : grey; font-size : 20px; margin-left : -10px; margin-top : -10px; position : absolute;"></i></button>

<div class = "Cube" id = "Cube">
<button class = "ListA" id = "ListA" onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)">
<i class="fa fa-dashcube" id = "Lista" style="color : grey; font-size : 20px; margin-left : -14px; margin-top : -10px; position : absolute;"></i>
<i class="fa fa-caret-down" id = "arrow1" style="color : grey; font-size : 20px; margin-left : 6px; margin-top : -10px; position : absolute;"></i>
</button>
    <div id = "Cubelist">
        <a onclick = "markall('All')"> All </a>
        <a onclick = "markall('None')"> None </a>
        <a onclick = "markall('Starred')"> Starred </a>
        <a onclick = "markall('Unstarred')"> Unstarred </a>
    </div>
</div>


<div class = "settingsl" id = "settingsl">
    <button class = "Settings" id = "Settings" onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)">
    <i class="fa fa-caret-down" id = "arrow3" style="color : grey; font-size : 20px; margin-left : 8px; margin-top : -10px; position : absolute;"></i>
    <i class="fa fa-cog" id = "Setting" style="color : grey; font-size : 20px; margin-left : -13px; margin-top : -10px; position : absolute;"></i>
    </button>
    <div id = "settingslist">
        <a onclick = "refresh('ol')"> Comfortable View </a>
        <div class = "themesl" id = "themesl">
        <a> Themes </a>
            <div class = "themeslist" id = "themeslist">
                <a onclick = 'themechange(this.innerHTML)'> RemoDc </a>
                <a onclick = 'themechange(this.innerHTML)'> VolvoBQ </a>
                <a onclick = 'themechange(this.innerHTML)'> ManiaB </a>
                <a onclick = 'themechange(this.innerHTML)'> Rosesflo </a>
                <a onclick = 'themechange(this.innerHTML)'> AppleC </a>                
            </div>
        
        </div>
    </div>
</div>

<div class = "val" id = "val"></div>

<button class = "Forw2" id = "Forw2" onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)" onclick="changevalues(this.id)">
<i class="fa fa-chevron-left" id = "arrow4" style="color : grey; font-size : 20px; margin-left : -8px; margin-top : -10px; position : absolute;"></i>
</button>

<button class = "Forw1" id = "Forw1" onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)" onclick="changevalues(this.id)">
<i class="fa fa-chevron-right" id = "arrow5" style="color : grey; font-size : 20px; margin-left : -7px; margin-top : -10px; position : absolute;"></i>
</button>

<button class = "Tasks" id = "Tasks" onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)" onclick = "addtasks(this.id)">

<button class = "minimize1" id = "minimize1" onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)" onclick = "addtasks(this.id)">
<i class="fa fa-minus" id = "minus" style = " color : grey; font-size : 20px; margin-left : -9px; margin-top : -10px; position : absolute;" ></i>
</button>

<button class = "pop1" id = "pop1" onclick = "deletetask(this.id)" onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)">
<i class = "fa fa-long-arrow-right" id = "arrow6" style = "-moz-transform : rotateZ(300deg); color : grey; font-size : 20px; margin-left : -10px; margin-top : -10px; position : absolute;"></i>
</button>

<button class = "cross1" id = "cross1" onclick = "taskbar(this.id)" onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)">
<i class = "fa fa-close" id = "close" style = "color : grey; font-size : 20px; margin-left : -10px; margin-top : -10px; position : absolute;"></i>
</button>
<button class = "plust" id = "plust" onclick = "inserttask(this.id)" onmouseover = "mouseover(this.id)" onmouseout = "mouseout(this.id)">
<i class = "fa fa-plus" id = "plust1" style = "color : grey; font-size : 20px; margin-left : -10px; margin-top : -10px; position : absolute;"></i>
</button>
</button>

<div class = "tk1" id = "tk1">
<ul class = "tk" id = "tk"></ul>
</div>

<button class = "Pane" id = "Pane">
<i class="fa fa-folder-open" id = "close" style="color : black; font-size : 20px; margin-left : -115px; margin-top : 0px; position : absolute;"></i>
<div id="viewed" style="margin-left:-110px">Viewed</div>
</button>

<div class = "line2"> </div>
<div id = "createL"> </div>

<script>   

var kc = 0;
var server; 
var f = 0;
var scrollcnt = 0;
var unscrollval = 54;
var keydown = 0;
var nfelements = 0;
var downinc = 0;
var downdec = 0;
var inpval = "";
var youscroll = 0;
var SHei = 0;
var click = 0;
var cvalue = 1;
var z = "";
var zzt = "";
var zzf = "";
var zzz = "";
var ht = "48";
var dell = 0;
var lengthL = 0;
var lenz = 0;
var lens = 0;
var iid = 0;
var start = parseInt(0);
var end = 0;
var decs = 1;
var sclick = 0;
var countc = 0;
var time = new Array();
var sname = new Array();
var fname = new Array();
var tname = new Array();
var taskarr = new taskarr();
var taskdata = "";
var tasklen = 12;
var searching_type = 'File';
var tt = 12;
var theme = "";

function reconnect(event,id)
{        
    var va = document.getElementById('file').value;
    if(id == "searcu" || event.keyCode == 13)
    if(searching_type == "Context")
        location.href="http://192.168.43.160:8083/"+va;                    
    else    
        location.href="http://192.168.1.124:8080/ss/"+va;    
}

function alreadyu(id)
{
    var valal = document.getElementById(id).value;
    if(valal.length > 0)
    {
        if(window.XMLHttpRequest)
        {
            server = new XMLHttpRequest();
        }
        else 
        {  
            server = new ActiveXObject("Microsoft.XMLHTTP");
        }
        if(searching_type == "Context")
            var url = "http://192.168.43.160:8083/hello/foo1?text="+x+"&type=cb";    
        else
            var url = "http://192.168.43.160:8083/hello/foo1?text="+x+"&type=sb";        
        //var url = "http://192.168.1.6:8083/Try/Ghazi1?search="+valal;
        server.open("GET",url,true);
        server.onreadystatechange = callback;
        server.send(null);               
    }
}

function detectClick()
{
    var selector = document.getElementById('selector');
    var ul = document.getElementById('drop-down');
    if(selector !== null)
    {
        selector.remove();
        f=0;
        unscrollval = 54;
        scrollcnt = 0;
        keydown = 0;
        downinc = 0;
        downdec = 0;
    }
    if(ul)
    {
        while(ul.firstChild)
            ul.removeChild(ul.firstChild);
    }
}

function themechange(sq)
{
    var Theme = new Array("RemoDc","VolvoBQ","ManiaB","Rosesflo","AppleC");
    sq = sq.trim();
    localStorage.theme = sq;
    if(sq == Theme[0])
        document.body.style.backgroundImage = "url('abc3.jpg')";
    else    
    if(sq == Theme[1])
        document.body.style.backgroundImage = "url('VolvoBQ.jpg')";
    else    
    if(sq == Theme[2])
    document.body.style.backgroundImage = "url('backg.jpeg')";
    else    
    if(sq == Theme[3])
        document.body.style.backgroundImage = "url('abc1.png')";
    else    
    if(sq == Theme[4])
        document.body.style.backgroundImage = "url('abc2.jpg')";
}

function addstar(id)
{
    zzf = localStorage.zzf;
    sname = new Array();
    lens  = localStorage.lens;
    zzt = localStorage.zzt;
    tname = new Array();
    if(lens == undefined || lens == 0)
    {   
        zzt = "";
        zzf = "";
        lens = 0;
    }
    else
    {
        if(zzf != undefined)
        {
            sname = zzf.split('@');
            tname = zzt.split('@');
        }
        zzf = "";
        zzt = "";
    }
    if(id == 'add-star')
    {
        var div = document.getElementsByClassName('fa fa-check-square');        
        for(var i = 0; i < div.length; i++)
        {
            var ids = div[i].id;
            ids = ids.substring(1,ids.length);
            if(document.getElementById('S' + ids).className == 'fa fa-star')
                continue;
            document.getElementById('S' + ids).setAttribute('class','fa fa-star');
            var valf = document.getElementById('F' + ids).innerHTML; 
            sname.push(valf);
            var valt = document.getElementById('D' + ids).innerHTML;
            tname.push(valt);
            lens++;
        }
    }
    else
    if(id == 'delete-star')
    {
        var div = document.getElementsByClassName('fa fa-check-square');        
        for(var i = 0; i < div.length; i++)
        {
            var ids = div[i].id;
            ids = ids.substring(1,ids.length);
            if(document.getElementById('S' + ids).className == 'fa fa-star-o')
                continue;            
            var ti = document.getElementById('D' + ids).innerHTML;
            document.getElementById('S' + ids).setAttribute('class','fa fa-star-o');            
            var index = tname.indexOf(ti);
            sname.splice(index,1);
            tname.splice(index,1);                
            lens--;
        }
    }
    var y = "";
    var t = "";
    if(lens > 0)
    {
        y = sname[0];
        y = y + '@';
        for(var i = 1 ; i < lens ; i++)
        {
            y = y + (sname[i]);
            y = y + '@';
        }
        t = tname[0];
        t = t + '@';
        for(var i = 1 ; i < lens ; i++)
        {
            t = t + (tname[i]);
            t = t + '@';
        }            
    }
    if(y.length > 0)
        y = y.substring(0 , y.length - 1);
    localStorage.zzf = y;
    localStorage.lens  = lens;
    if(t.length > 0)
        t = t.substring(0 , t.length - 1);
    localStorage.zzt = t;        
}


function markall(type)
{
    if(type == 'All')
    {
        var div = document.getElementsByName('checkbox');
        for(var i = 0; i < div.length; i++)
            div[i].setAttribute('class','fa fa-check-square');
        if(div.length > 0)
        document.getElementById('delete').style='visibility:visible;';                
    }
    else
    if(type == 'None')
    {
        var div = document.getElementsByName('checkbox');
        for(var i = 0; i < div.length; i++)
            div[i].setAttribute('class','fa fa-square-o');        
    }
    else
    if(type == 'Starred')
    {
        var div = document.getElementsByName('checkbox');
        for(var i = 0; i < div.length; i++)
            div[i].setAttribute('class','fa fa-square-o');        
        var div = document.getElementsByClassName('fa fa-star');
        for(var i = 0; i < div.length; i++)
        {
            var idj = div[i].id;
            idj = 'C' + idj.substring(1,idj.length);
            document.getElementById(idj).setAttribute('class','fa fa-check-square');                
        }
        if(div.length > 0)
        document.getElementById('delete').style='visibility:visible;';        
    }
    else
    if(type == 'Unstarred')
    {
        var div = document.getElementsByName('checkbox');
        for(var i = 0; i < div.length; i++)
            div[i].setAttribute('class','fa fa-square-o');        
        var div = document.getElementsByClassName('fa fa-star-o');
        for(var i = 0; i < div.length; i++)
        {
            var idj = div[i].id;
            idj = 'C' + idj.substring(1,idj.length);
            document.getElementById(idj).setAttribute('class','fa fa-check-square');                
        }
        if(div.length > 0)
        document.getElementById('delete').style='visibility:visible;';                
    }
}


function clickevents(id)
{
    if(id == 'Fboxlist')
    {
        document.getElementById('file').focus();
    }
    else
    if(id == 'DomainlistF')
    {
        document.getElementById('file').focus();
        searching_type = 'File';
        document.getElementById('cont').innerHTML = "Start Searching File";                
    }
    else
    if(id == 'DomainlistC')
    {
        document.getElementById('file').focus();
        searching_type = 'Context';  
        document.getElementById('cont').innerHTML = "Start Searching Context";        
    }
}


function taskbar(id)
{
    if(id == 'cross1')
    {
//        document.getElementsByClassName('tk1-input').style='visibility:hidden;';
        var db = document.getElementById('tk');
        if(db)
        {
            while(db.firstChild)
            {
                db.removeChild(db.firstChild);
            }
        }        

        document.getElementById('Tasks').style='visibility:hidden;';
        document.getElementById('plust').style='visibility:hidden;';
        document.getElementById('cross1').style='visibility:hidden;';
        document.getElementById('pop1').style='visibility:hidden;';
        document.getElementById('minimize1').style='visibility:hidden;';
    }
    else
    {
        document.getElementById('Tasks').style='visibility:visible;';
        document.getElementById('plust').style='visibility:visible;';
        document.getElementById('cross1').style='visibility:visible;';
        document.getElementById('pop1').style='visibility:visible;';
        document.getElementById('minimize1').style='visibility:visible;';        
    }
}


function inserttask(id)
{
    tasklen = localStorage.tasklen;
    var tt = document.getElementById('tk').childNodes.length;
    var inp = document.createElement('input');
    inp.setAttribute('class','tk1-input');
    inp.id = 'CB' + tt;    
    inp.setAttribute('onclick','checkb(undefined,this.id,"")'); 
    inp.setAttribute('onkeypress','checkc(event,this.id)');             
    var div = document.createElement('div');
    div.setAttribute('class','defau');
    div.id = 'CC' + tt;
    div.appendChild(inp);
    document.getElementById('tk').appendChild(div);
}


function deletetask(id)
{
    tasklen = localStorage.tasklen;
    taskdata = localStorage.taskdata;
    taskarr = new Array();    
    var adjust = 0;    
    var Ty = "";    
    
    if(tasklen != undefined)
        taskarr = taskdata.split('@');
    
    div = document.getElementsByTagName('input');
    for(var i = 0; i < div.length; i++ )
    {
        if(div[i].type == 'checkbox' && div[i].checked)
        {
            var Tid = div[i].id;
            taskarr.splice(parseInt(parseInt(Tid.substring(2,Tid.length))-parseInt(adjust)),1);
            tasklen--;
            adjust++;
        }
    }
    if(tasklen > 0 && tasklen != undefined)
    {
        for(var i = 0 ; i < tasklen ; i++)
        {
            Ty = Ty + (taskarr[i]);
            Ty = Ty + '@';
        }
    }
    
    if(Ty.length > 0)
        Ty = Ty.substring(0 , Ty.length - 1);
    localStorage.taskdata = Ty;
    localStorage.tasklen = tasklen;
    
    var db = document.getElementById('tk');
    if(db)
    {
       while(db.firstChild)
       {
            db.removeChild(db.firstChild);
       }
    }        
    addtasks(id);
}


function addselTask()
{
    tasklen = localStorage.tasklen;        
    taskdata = localStorage.taskdata;
    taskarr = new Array();
    var div = document.getElementsByClassName('fa fa-check-square');
    var Ty;
    if(taskdata == undefined)
    {
        Ty = "";
        tasklen = 0;
    }
    else
        Ty = taskdata;
    
    for(var i = 0; i < div.length; i++)
    {
        alert('x');
        var idx = div[i].id.substring(1,div[i].id.length);
        tasklen++;
        var ivalue = document.getElementById('F' + idx).innerHTML;
        Ty = Ty + '@';
        Ty = Ty + ivalue;            
    }
    if(Ty.length > 0)
        Ty = Ty.substring(0 , Ty.length - 1);

    localStorage.taskdata = Ty;
    localStorage.tasklen = tasklen;
    
    taskdata = localStorage.taskdata;
    tasklen = localStorage.tasklen;
    
    if(taskdata != undefined)            
        taskarr = taskdata.split('@'); 
    document.getElementById('Tasks').setAttribute('style' , 'top:322px;');
    document.getElementById('minimize1').setAttribute('style' , 'top:322px;');
    document.getElementById('pop1').setAttribute('style' , 'top:322px;');
    document.getElementById('cross1').setAttribute('style' , 'top:322px;');
    document.getElementById('plust').setAttribute('style' , 'top:322px;');
    var cz = 12;
    if(tasklen != undefined && tasklen > 12)
        cz = tasklen;
    for(var i = 0; i < cz; i++)
    {
        var inp = document.createElement('input');
        inp.setAttribute('class','tk1-input');
        inp.id = 'CB' + i;    
        inp.setAttribute('onclick','checkb(event,this.id,"")'); 
        inp.setAttribute('onkeypress','checkc(event,this.id)');             
        var div = document.createElement('div');
        div.setAttribute('class','defau');
        div.id = 'CC' + i;
        div.appendChild(inp);
        document.getElementById('tk').appendChild(div);
        if(taskarr[i] != undefined && taskarr[i].length > 0)
        {
            checkb(undefined,'CB' + i,taskarr[i]);
        }
    }
}


function checkc(event,id)
{
    if((event.keyCode == 8 || event.keyCode == 37) && document.getElementById(id).value.length <= 5)
        event.preventDefault();
    if(event.keyCode == 9)
    {
        var idd = parseInt(id.substring(2,id.length)) + 1;    
        checkb(event,'CB' + idd,"9");
    }
    
    var div = document.getElementsByClassName('tk1-input');
    var Ty = "";
    if(tasklen == undefined)
        tasklen = 0;    
    for(var i = 0 ; i < div.length ; i++)
    {
        var ivalue = document.getElementById('CB' + i).value;
        if(ivalue.length > 0)
        {
            tasklen++;
            Ty = Ty + ivalue;  
            Ty = Ty + '@';
        }
    }
    if(Ty.length > 0)
        Ty = Ty.substring(0 , Ty.length - 1);
    localStorage.taskdata = Ty;
    localStorage.tasklen = tasklen;
}


function checkb(event,id,s)
{
    if((document.getElementById(id).value.length == 0 || s.length > 0))
    {
        var input = document.createElement('input');
        input.setAttribute('type','checkbox');
        var idd = id.substring(2,id.length);         
        input.id = "CA" + idd;
        input.setAttribute('style','cursor : pointer; z-index : 15; position : absolute; margin-top : 9px; margin-left : -420px; font-size : 20px;'); 
        document.getElementById('CC' + idd).appendChild(input);
        document.getElementById(id).value = "     ";
        if(s == "9")
        {
            event.preventDefault()
            document.getElementById(id).focus();
        }
        if(s.length > 0 && s != '9')
        {
            document.getElementById(id).value += s;
        }        
    }
}

        
function addtasks(id)
{
    var countc = document.getElementById('tk').childNodes.length;
    if(countc != 0 || id == 'minimize1')
    {  
        var yt = "";
        var i = 0;
        var j = 0;
        var db = document.getElementById('tk');
        if(db)
        {
            while(db.firstChild)
            {
                ivalue = document.getElementById('CB' + i).value;
                i++;
                ivalue = ivalue.substring(5,ivalue.length);
                if(ivalue.length > 0)
                {
                    yt = yt + ivalue;
                    yt = yt + '@';               
                    j++;
                }
                db.removeChild(db.firstChild);  
            }
        }                     
        if(yt.length > 0)
            yt = yt.substring(0 , yt.length - 1);
        localStorage.taskdata = yt;
        localStorage.tasklen = j;
        
        document.getElementById('Tasks').setAttribute('style' , 'top:590px;');
        document.getElementById('minimize1').setAttribute('style' , 'top:590px;');
        document.getElementById('pop1').setAttribute('style' , 'top:590px;');
        document.getElementById('cross1').setAttribute('style' , 'top:590px;');   
        document.getElementById('plust').setAttribute('style' , 'top:590px;');        
    }
    else
    if(countc == 0 || id == 'pop1')
    {       
        tasklen = localStorage.tasklen;        
        taskdata = localStorage.taskdata;
        taskarr = new Array();
        if(taskdata != undefined)
            taskarr = taskdata.split('@'); 
        document.getElementById('Tasks').setAttribute('style' , 'top:322px;');
        document.getElementById('minimize1').setAttribute('style' , 'top:322px;');
        document.getElementById('pop1').setAttribute('style' , 'top:322px;');
        document.getElementById('cross1').setAttribute('style' , 'top:322px;');
        document.getElementById('plust').setAttribute('style' , 'top:322px;');
        var cz = 12;
        if(tasklen != undefined && tasklen > 12)
            cz = tasklen;
        for(var i = 0; i < cz; i++)
        {
            var inp = document.createElement('input');
            inp.setAttribute('class','tk1-input');
            inp.id = 'CB' + i;    
            inp.setAttribute('onclick','checkb(event,this.id,"")'); 
            inp.setAttribute('onkeypress','checkc(event,this.id)');             
            var div = document.createElement('div');
            div.setAttribute('class','defau');
            div.id = 'CC' + i;
            div.appendChild(inp);
            document.getElementById('tk').appendChild(div);
            if(taskarr[i] != undefined && taskarr[i].length > 0)
            {
                checkb(undefined,'CB' + i,taskarr[i]);
            }
        }
    }
}


function starc()
{
    decs = 1;
    zzf = localStorage.zzf;
    zzt = localStorage.zzt;
    lens = localStorage.lens;
    if(lens == undefined)
    {
        lens = 0;
        zzt = "";
        zzf = "";
    }
    sname = new Array();
    sname = zzf.split('@');
    tname = new Array();
    tname = zzt.split('@');
    var dd = document.getElementById('createL');
    if(dd)
    {
        while(dd.firstChild)
            dd.removeChild(dd.firstChild);
    }    

    if(lens == 0) 
    {
         var db = document.getElementById('val');
         if(db)
         {
            while(db.firstChild)
                db.removeChild(db.firstChild);
         }             
         var divI = document.createElement('div');
         divI.setAttribute('class','valueS');
         divI.setAttribute('id','valueS');
         divI.innerHTML = '0-0 of 0';
         document.getElementById('val').appendChild(divI);
         var cnt = 3;
         document.getElementById('valueS').style = 'margin-left:' + (1090 - cnt*10) + 'px';
    }
    else
    {
        var l = lens;
        if(sclick <= 0)
            sclick = 0;
        else
        if(sclick * 9 >= l)
            sclick--; 
        start = sclick * 9 + 1;
        if(sclick * 9 + 9 <= l)
            end = sclick * 9 + 9;
        else
            end = l;
        var star = start - 1;
        var en = end;
        var ll = l;
        var cnt = 0;
        while(star > 0)
        {
            star = star / (10);
            star = parseInt(star);
            cnt++;
        }
        while(en > 0)
        {
            en = en / 10;
            en = parseInt(en);
            cnt++;    
        }
        while(ll > 0)
        {
            ll = ll / 10;
            ll = parseInt(ll);
            cnt++;
        }
        if(l == 0)
        {
            start = 0;
            cnt = 2;
        }
        document.getElementById('valueS').innerHTML = start + '-' + end + ' of ' + lens;
        document.getElementById('valueS').style = 'margin-left:' + (1080 - cnt*10) + 'px';    
        start = start - 1;
        if(start >= 0)
        {        
            ht = 49;
            var k = 0;
            for(var i = start ; i< end ; i++)
            {
                if(sname[i] != " ")
                {
                    var button = document.createElement('button');
                    button.setAttribute('class','BList');
                    button.id = "B" + (i+1);
                    button.style = 'margin-top :' + (ht+k).toString() + 'px';
                    button.setAttribute('onclick','cordinate(event,this.id)');
        
                    var div = document.createElement('div');
                    div.setAttribute('class','fnamee');
                    div.id = "F" + (i+1);
                    div.innerHTML = sname[i];
        
                    var divi = document.createElement('div');
                    divi.setAttribute('class','date');
                    divi.id = "D" + (i+1);
                    divi.innerHTML = tname[i].substring(0,tname[i].indexOf('<'));
                    divi.appendChild(div);
                    button.appendChild(divi);
        
                    var ic = document.createElement('i');
                    ic.setAttribute('class','fa fa-star');//fa fa-star
                    ic.id = "S" + (i+1);
                    ic.setAttribute('style','position:absolute;color:white;margin-top:-8px;margin-left:40px;font-size : 20px;');
                    button.appendChild(ic);
        
                    var input = document.createElement('i');
                    input.setAttribute('class','fa fa-square-o');//fa fa-check-square
                    input.setAttribute('name','checkbox');
                    input.id = "C" + (i+1);
                    input.setAttribute('style','color:white;position:absolute;margin-top:-8px;margin-left:10px;font-size : 20px;');
                    button.appendChild(input);
                    document.getElementById('createL').appendChild(button);
                }
                k = k + 40;
            }
            var ca = document.getElementsByClassName('fa fa-check-square');           
            if(ca.length > 0)
                document.getElementById('delete').setAttribute('style','visibility:visible;');
            else
                document.getElementById('delete').setAttribute('style','visibility:hidden;');                
            
        }        
    }
}


function changevalues(id)
{
    if(id == 'Forw2')
    {
        if(decs == 0)
        {
            click--;
            refresh('CV');
        }
        else
        {
            sclick--;
            starc();
        }
    }
    else
    if(id == 'Forw1') 
    {
        if(decs == 0)
        {
            click++;
            refresh('CV');
        }
        else
        {
            sclick++;
            starc();
        }
    }
    else
    if(id == 'delete')
    {
        lenz = localStorage.lenz;
        z = localStorage.z;
        zzz = localStorage.zzz;
        lens = localStorage.lens;
        zzf = localStorage.zzf;
        zzt = localStorage.zzt;
        
        if(lenz == undefined)
        {
            lenz = 0;
            z = "";
            zzz = "";
        }
        else
        {
            fname = new Array();
            time = new Array();
            fname = z.split('@');
            time = zzz.split('@');
        }
                
        if(lens == undefined)
        {
            lens = 0;
            zzf = "";
            zzt = "";
        }
        else
        {
            sname = new Array();
            tname = new Array();
            sname = zzf.split('@');
            tname = zzt.split('@');
        }        
        var divv = document.getElementsByClassName('fa fa-check-square');
        var divt = document.getElementsByClassName('date');         
        for(var i = 0; i < divv.length; i++)
        {
            var id1 =divv[i].id; 
            var k = id1.substring(1,id1.length);
            var timev = divt['D' + k].innerHTML;
            var filev = document.getElementById('F' + k).innerHTML;
            var timevv = timev.substring(0,timev.indexOf('<'));
            for(var jk = 0; jk < lens; jk++)
            {
                if(sname[jk] == filev && tname[jk].substring(0,tname[jk].indexOf('<')) == timevv)
                {
                    sname.splice(jk , 1);
                    tname.splice(jk , 1);
                    lens--;
                    break;
                }
            }    
            for(var jj = 0; jj < lenz; jj++)
            {
                if(fname[jj] == filev && time[jj] == timevv)
                {
                    fname.splice(jj , 1);
                    time.splice(jj , 1);
                    lenz--;
                    break;
                }
            }    
        }
        var yz = "";
        var tz = "";
        if(lens > 0)
        {
            yz = sname[0];
            yz = yz + '@';
            for(var i = 1 ; i < lens ; i++)
            {
                yz = yz + (sname[i]);
                yz = yz + '@';
            }
            tz = tname[0];
            tz = tz + '@';
            for(var i = 1 ; i < lens ; i++)
            {
                tz = tz + (tname[i]);
                tz = tz + '@';
            }             
        }
        if(yz.length > 0)
            yz = yz.substring(0 , yz.length - 1);
        localStorage.zzf = yz;
        localStorage.lens = lens;
        if(tz.length > 0)
            tz = tz.substring(0 , tz.length - 1);
        localStorage.zzt = tz;          
        if(lens <= 0)
        {  
            localStorage.zzf="";
            localStorage.zzt="";
        }
        var y = "";
        var t = "";
        if(lenz > 0)
        {
            y = fname[0];
            y = y + '@';
            for(var i = 1 ; i < lenz ; i++)
            {
                y = y + (fname[i]);
                y = y + '@';
            }
            t = time[0];
            t = t + '@';
            for(var i = 1 ; i < lenz ; i++)
            {
                t = t + (time[i]);
                t = t + '@';
            }             
        }
        if(y.length > 0)
            y = y.substring(0 , y.length - 1);
        localStorage.z = y;
        localStorage.lenz = lenz;
        if(t.length > 0)
            t = t.substring(0 , t.length - 1);
        localStorage.zzz = t;
          
        if(lenz <= 0)
            localStorage.z="";
        if(lenz <= 0)
            localStorage.zzz="";
        if(decs == 1)
            starc();
        else
            refresh('CV');
    }
}


function refresh(s)
{
    var Theme = new Array("RemoDc","VolvoBQ","ManiaB","Rosesflo","AppleC");    
    theme = localStorage.theme; 
    if(theme != undefined)
    {
        if(theme == Theme[0])
            document.body.style.backgroundImage = "url('abc3.jpg')";
        else    
        if(theme == Theme[1])
            document.body.style.backgroundImage = "url('VolvoBQ.jpg')";
        else    
        if(theme == Theme[2])
            document.body.style.backgroundImage = "url('backg.jpeg')";
        else    
        if(theme == Theme[3])
            document.body.style.backgroundImage = "url('abc1.png')";
        else    
        if(theme == Theme[4])
            document.body.style.backgroundImage = "url('abc2.jpg')";      
    }
    else
       document.body.style.backgroundImage = "url('abc3.jpg')";        
    
    
    decs = 0;
    z = localStorage.z;
    zzz = localStorage.zzz;
    lenz = localStorage.lenz;
    
    if(lenz == undefined)
    {
        lenz = 0;
        z = "";
        zzz = "";
    }
    
    fname = new Array();
    fname = z.split('@');
    time = new Array();
    time = zzz.split('@');
    
    var db = document.getElementById('val');
    var dd = document.getElementById('createL');
    if(dd)
    {
        while(dd.firstChild)
            dd.removeChild(dd.firstChild);
    }    

    if(lenz == 0) 
    {
        var db = document.getElementById('val');
        if(db)
        {
            while(db.firstChild)
                db.removeChild(db.firstChild);
        }             
        var divI = document.createElement('div');
        divI.setAttribute('class','valueS');
        divI.setAttribute('id','valueS');
        divI.innerHTML = '0-0 of 0';
        document.getElementById('val').appendChild(divI);
        var cnt = 3;
        document.getElementById('valueS').style = 'margin-left:' + (1090 - cnt*10) + 'px';
    }
    else
    {    
        if(s == 'CV')
        {
            var l = lenz;
            if(click <= 0)
                click = 0;
            else
            if(click * 9 >= l)
                click--; 
            start = click * 9 + 1;
            if(click * 9 + 9 <= l)
                end = click * 9 + 9;
            else
                end = l;
            var star = start - 1;
            var en = end;
            var ll = l;
            var cnt = 0;
            while(star > 0)
            {
                star = star / (10);
                star = parseInt(star);
                cnt++;
            }
            while(en > 0)
            {
                en = en / 10;
                en = parseInt(en);
                cnt++;    
            }
            while(ll > 0)
            {
                ll = ll / 10;
                ll = parseInt(ll);
                cnt++;
            }
            if(l == 0)
            {
                start = 0;
                cnt = 2;
            }
            document.getElementById('valueS').innerHTML = start + '-' + end + ' of ' + lenz;
            document.getElementById('valueS').style = 'margin-left:' + (1080 - cnt*10) + 'px';    
            start = start - 1;
        }
        else
            if(s == 'lo')  
        {
            if(lenz > 9)
            {
                start = 0;
                end = 9;
            }
            else
            {
                start = 0;
                end = lenz;
            }
            if(document.getElementById('val').childNodes.length == 0)
            {
                var divI = document.createElement('div');
                divI.setAttribute('class','valueS');
                divI.setAttribute('id','valueS');
                if(lenz > 9)
                    divI.innerHTML = 1 + '-' + 9 + ' of ' + lenz;
                else
                    divI.innerHTML = 1 + '-' + lenz + ' of ' + lenz;
                document.getElementById('val').appendChild(divI);   
            }
            else
            {
            if(lenz > 9)
                document.getElementById('valueS').innerHTML = 1 + '-' + 9 + ' of ' + lenz;
            else
                document.getElementById('valueS').innerHTML = 1 + '-' + lenz + ' of ' + lenz;
            }
            var ll = lenz;
            var cnt = 2;
            while(ll > 0)
            {
                ll = ll / 10;
                ll = parseInt(ll);
                cnt++;
            }
            document.getElementById('valueS').style = 'margin-left:' + (1090 - cnt*10) + 'px';    
        }
        if(start >= 0)
        {        
            ht = 49;
            var k = 0;
            for(var i = start ; i< end ; i++)
            {
                if(fname[i] != " ")
                {
                    var button = document.createElement('button');
                    button.setAttribute('class','BList');
                    button.id = "B" + (i+1);
                    button.style = 'margin-top :' + (ht+k).toString() + 'px';
                    button.setAttribute('onclick','cordinate(event,this.id)');
        
                    var div = document.createElement('div');
                    div.setAttribute('class','fnamee');
                    div.id = "F" + (i+1);
                    div.innerHTML = fname[i];
        
                    var divi = document.createElement('div');
                    divi.setAttribute('class','date');
                    divi.id = "D" + (i+1);
                    divi.innerHTML = time[i];
                    divi.appendChild(div);
                    button.appendChild(divi);
        
                    var ic = document.createElement('i');
                    ic.setAttribute('class','fa fa-star-o');//fa fa-star
                    ic.setAttribute('name','star');
                    ic.id = "S" + (i+1);
                    ic.setAttribute('style','position:absolute;color:white;margin-top:-8px;margin-left:40px;font-size : 20px;');
                    button.appendChild(ic);
        
                    var input = document.createElement('i');
                    input.setAttribute('class','fa fa-square-o');//fa fa-check-square
                    input.setAttribute('name','checkbox');
                    input.id = "C" + (i+1);
                    input.setAttribute('style','color:white;position:absolute;margin-top:-8px;margin-left:10px;font-size : 20px;');
                    button.appendChild(input);
                    document.getElementById('createL').appendChild(button);
                }
                k = k + 40;
            }
            var ca = document.getElementsByClassName('fa fa-check-square');     
            if(ca.length > 0)
                document.getElementById('delete').setAttribute('style','visibility:visible;');
            else
                document.getElementById('delete').setAttribute('style','visibility:hidden;');                   
        }
    }
    zzf = localStorage.zzf;
    zzt =  localStorage.zzt;    
    lens = localStorage.lens;

    if(lens != undefined && lens != 0)
    {
        sname = new Array();
        sname = zzf.split('@');
        tname = new Array();
        tname = zzt.split('@');        
        var del = document.getElementsByClassName('date');
        var delle = del.length;
        for(var i = 0; i< lens ; i++)
        {
            for(var j = 0; j < delle; j++)
            {
                var id = del[j].id;
                id = 'F' + id.substring(1,id.length);
                var lis = document.getElementById(id).innerHTML;
                if(del[j].innerHTML.substring(0,del[j].innerHTML.indexOf('<')) == tname[i].substring(0,tname[i].indexOf('<')) && sname[i] == lis)
                {   
                    document.getElementsByName('star')[j].setAttribute('class','fa fa-star');                
                }
            }    
        }
    }   
}


function cordinate(event,id)
{
    var xa = event.clientX;
    if(xa >= 279 && xa <= 294)
    {
        if(document.getElementById(id).childNodes[2].className == 'fa fa-square-o')
            document.getElementById(id).childNodes[2].setAttribute('class','fa fa-check-square');
       else
            document.getElementById(id).childNodes[2].setAttribute('class','fa fa-square-o'); 
       
        var ca = document.getElementsByClassName('fa fa-check-square');
        if(ca.length > 0)
        {
            document.getElementById('delete').setAttribute('style','visibility:visible;');
            if(document.getElementById('Moreklist').firstElementChild.tagName == 'P')
            {
                var dp = document.getElementById('Moreklist');
                if(dp)
                {
                    while(dp.firstChild)
                        dp.removeChild(dp.firstChild);
                }             
                var anchor = document.createElement('a');
                anchor.setAttribute("onclick","javascript:addstar('add-star')");
                anchor.innerHTML = "Add Star";            
                dp.append(anchor);
                var anchor = document.createElement('a');
                anchor.setAttribute("onclick","javascript:addstar('delete-star')");                
                anchor.innerHTML = "Remove Star";
                dp.append(anchor);
                var anchor = document.createElement('a');
                anchor.setAttribute("onclick","javascript:addselTask()");                                                
                anchor.innerHTML = "Add To Task";
                dp.append(anchor);
                var anchor = document.createElement('a');
                anchor.setAttribute("onclick","javascript:changevalues('delete')");                                
                anchor.innerHTML = "Delete Selected";
                dp.append(anchor);
            }
        }
        else
        {
            document.getElementById('delete').setAttribute('style','visibility:hidden;');
            var dp = document.getElementById('Moreklist');
            if(dp)
            {
                while(dp.firstChild)
                    dp.removeChild(dp.firstChild);
            }
            var lb = document.createElement('P');
            lb.innerHTML = "Select Files to know for more options";
            dp.appendChild(lb);
        }
    }
    if(xa >= 310 && xa <= 327 )
    {
        zzf = localStorage.zzf;
        sname = new Array();
        lens  = localStorage.lens;
        zzt = localStorage.zzt;
        tname = new Array();
        if(lens == undefined || lens == 0)
        {   
            zzt = "";
            zzf = "";
            lens = 0;
        }
       else
       {
            if(zzf != undefined)
            {
               sname = zzf.split('@');
               tname = zzt.split('@');
            }
            zzf = "";
            zzt = "";
        }
    
        if(document.getElementById(id).childNodes[1].className == 'fa fa-star-o')
        {
            document.getElementById(id).childNodes[1].setAttribute('class','fa fa-star');
            var valf = document.getElementById('F' + id.substring(1,id.length)).innerHTML; 
            sname.push(valf);
            var valt = document.getElementById('D' + id.substring(1,id.length)).innerHTML;
            tname.push(valt);
            lens++;

            var y = "";
            var t = "";
            if(lens > 0)
            {
                y = sname[0];
                y = y + '@';
               for(var i = 1 ; i < lens ; i++)
               {
                    y = y + (sname[i]);
                    y = y + '@';
               }
               t = tname[0];
               t = t + '@';
               for(var i = 1 ; i < lens ; i++)
               {
                  t = t + (tname[i]);
                  t = t + '@';
               }            
            }
            if(y.length > 0)
                y = y.substring(0 , y.length - 1);
            localStorage.zzf = y;
            localStorage.lens  = lens;
            if(t.length > 0)
                t = t.substring(0 , t.length - 1);
            localStorage.zzt = t;        
        }
        else
        {
            document.getElementById(id).childNodes[1].setAttribute('class','fa fa-star-o');
            var idd = 'D' + id.substring(1,id.length);
            var ti = document.getElementById(idd).innerHTML;
            var index = tname.indexOf(ti);
            sname.splice(index,1);
            tname.splice(index,1);                
            lens--;

            var y = "";
            var t = "";
            if(lens > 0)
            {
                y = sname[0];
                y = y + '@';
                for(var i = 1 ; i < lens ; i++)
                {
                    y = y + (sname[i]);
                    y = y + '@';
                }
                t = tname[0];
                t = t + '@';
                for(var i = 1 ; i < lens ; i++)
                {
                    t = t + (tname[i]);
                    t = t + '@';
                }            
            }
        
            if(y.length > 0)
                y = y.substring(0 , y.length - 1);
            localStorage.zzf = y;
            localStorage.lens  = lens;   
            if(t.length > 0)
               t = t.substring(0 , t.length - 1);
            localStorage.zzt = t;        
        }    
    }
    if(xa > 327)
    {
        if(window.XMLHttpRequest)
        {
            server = new XMLHttpRequest();
        }
        else 
        {  
            server = new ActiveXObject("Microsoft.XMLHTTP");
        }
        
        var valzp = document.getElementById('F' + id.substring(1,id.length)).innerHTML;
                document.getElementById('file').focus();
        document.getElementById('file').value = valzp;
        
        //valzp += 'op';
        //alert("x");
/*        if(searching_type == "Context")
            var url = "http://192.168.43.160:8083/hello/foo1?text="+valzp+"&type=cb";    
        else
            //var url = "http://192.168.43.160:8083/hello/foo1?text="+valzp+"&type=sb";        
        var url = "http://localhost:8083/Try/Ghazi1?search="+valzp;        

        server.open("GET",url,true);
        server.onreadystatechange = callback;
        server.send(null);       
*/    }
}


function openthefile(event)
{
     fname = new Array();
     time = new Array();
     z = localStorage.z;
     zzz = localStorage.zzz;
     lenz  = localStorage.lenz;
     
     if(lenz == 0 || lenz == undefined)
     {
         zzz = "";
         z = "";
         lenz = 0;
     }
     else
     {
         fname = z.split('@');
         time = zzz.split('@');
         z = "";
         zzz = "";
     }
     if(window.XMLHttpRequest)
     {
         server = new XMLHttpRequest();
     }
     else 
     {  
         server = new ActiveXObject("Microsoft.XMLHTTP");
     }
     var x = "-1";
     if(event.type == undefined)
     {
         var x = document.getElementById(event).value;
         fname.push(x);
         time.push(Date());
         lenz++;
     }
     else
     {   
      var tagname = event.currentTarget.tagName;
      if(tagname == 'DIV')
      {
         var li = document.getElementsByTagName('li');
         if(keydown > 0)
         {
             x = li[keydown-1].innerHTML;
             fname.push(x);
             time.push(Date());
             lenz++;
         }
         else
         {
             x = li[nfelements + keydown].innerHTML;
             fname.push(x);
             time.push(Date());
             lenz++;
         }
     }
     else
     if(tagname == 'BUTTON')
     {
            x = document.getElementById('file').value;
            fname.push(x);
            time.push(Date());
            lenz++;
     }
     else
     if(event.keyCode == 13)
     {
             x = document.getElementById('file').value;
             fname.push(x);
             time.push(Date());
             lenz++;
     }
     }
     var y = "";
     var t = "";
     if(lenz > 0)
     {
         y = fname[0];
         y = y + '@';
         for(var i = 1 ; i < lenz ; i++)
         {
            y = y + (fname[i]);
            y = y + '@';
         }
         t = time[0];
         t = t + '@';
         for(var i = 1 ; i < lenz ; i++)
         {
            t = t + (time[i]);
            t = t + '@';
         }
     }
     if(y.length > 0)
     y = y.substring(0 , y.length - 1);
     localStorage.z = y;
     localStorage.lenz  = lenz;
     if(t.length > 0)
     t = t.substring(0 , t.length - 1);
     localStorage.zzz = t;
     if(x != '-1')
     {
        //x+= 'op';
        //alert(x);
    if(searching_type == "Context")
        var url = "http://192.168.43.160:8083/hello/foo1?text="+x+"&type=cb";    
    else
        var url = "http://192.168.43.156:8080/Instant_Search/foo3?query="+x;        
        //var url = "http://192.168.1.6:8083/Try/Ghazi1?search="+x;
        server.open("GET",url,true);
        server.onreadystatechange = callback;
        server.send(null);
     }
          refresh('lo'); 
}


function remove(event)
{
     var selector = document.getElementById('selector');
     var keyvalue = event.keyCode;
     if(selector !== null && keyvalue != 38 && keyvalue != 40 )
     {
         selector.remove();
         youscroll = 1;
     }
}


function mouseover(hover_id)
{
    if(hover_id == 'refresh1')
    {
        document.getElementById('color').style.color = 'black';
        document.getElementById('refresh1').setAttribute('style','background-color : white');
    }
    else
    if(hover_id == 'more')
    {
        document.getElementById('arrow2').style.color = 'black';      
        document.getElementById('more').setAttribute('style','background-color : white');
    }
    else
    if(hover_id == 'ListA')
    {
        document.getElementById('arrow1').style.color = 'black';      
        document.getElementById('Lista').style.color = 'black';      
        document.getElementById('ListA').setAttribute('style','background-color : white');
    }
    else
    if(hover_id == 'Settings')
    {
        document.getElementById('arrow3').style.color = 'black';      
        document.getElementById('Setting').style.color = 'black';      
        document.getElementById('Settings').setAttribute('style','background-color : white');
    }
    else
    if(hover_id == 'Forw1')
    {
        document.getElementById('arrow5').style.color = 'black';      
        document.getElementById('Forw1').setAttribute('style','background-color : white');
    }
    else
    if(hover_id == 'Forw2')
    {
        document.getElementById('arrow4').style.color = 'black';      
        document.getElementById('Forw2').setAttribute('style','background-color : white');
    }
    else
    if(hover_id == 'minimize1')
    {
        document.getElementById('minus').style.color = 'black';
        var div = document.createElement('div');
        div.setAttribute('id','box1');
        document.getElementById('minimize1').appendChild(div);      
    }
    else
    if(hover_id == 'cross1')
    {
        document.getElementById('close').style.color = 'black';
        var div = document.createElement('div');
        div.setAttribute('id','box3');
        document.getElementById('cross1').appendChild(div);      
    }
    else
    if(hover_id == 'pop1')
    {
        document.getElementById('arrow6').style.color = 'black';
        var div = document.createElement('div');
        div.setAttribute('id','box2');
        document.getElementById('pop1').appendChild(div);      
    }    
}


function mouseout(hover_id)
{
    if(hover_id == 'refresh1')
    {
        document.getElementById('color').style.color = 'grey';
        document.getElementById('refresh1').setAttribute('style','background-color : #D3D3D3');
    }
    else
    if(hover_id == 'more')
    {
        document.getElementById('arrow2').style.color = 'grey';      
        document.getElementById('more').setAttribute('style','background-color : #D3D3D3');
    }
    else
    if(hover_id == 'ListA')
    {
        document.getElementById('arrow1').style.color = 'grey';      
        document.getElementById('Lista').style.color = 'grey';      
        document.getElementById('ListA').setAttribute('style','background-color : #D3D3D3');
    } 
    else
    if(hover_id == 'Settings')
    {
        document.getElementById('arrow3').style.color = 'grey';      
        document.getElementById('Setting').style.color = 'grey';      
        document.getElementById('Settings').setAttribute('style','background-color : #D3D3D3');
    }
    else
    if(hover_id == 'Forw1')
    {
        document.getElementById('arrow5').style.color = 'grey';      
        document.getElementById('Forw1').setAttribute('style','background-color : #D3D3D3');
    }
    else
    if(hover_id == 'Forw2')
    {
        document.getElementById('arrow4').style.color = 'grey';      
        document.getElementById('Forw2').setAttribute('style','background-color : #D3D3D3');
    }
    else
    if(hover_id == 'minimize1')
    {
        document.getElementById('minus').style.color = 'grey';      
        document.getElementById('box1').remove();
    }
    else
    if(hover_id == 'cross1')
    {
        document.getElementById('close').style.color = 'grey';
        document.getElementById('box3').remove();
    }
    else
    if(hover_id == 'pop1')
    {
        document.getElementById('arrow6').style.color = 'grey';
        document.getElementById('box2').remove();
    }    
}


function boxmodify(event)
{
   var file = document.getElementById('file');
   var keyvalue = event.keyCode;
   //var li = document.getElementsByTagName('li');
   var li = document.getElementsByClassName('drop-li');   
   var ele = document.getElementById('drop-down');
   SHei = ele.scrollHeight;
   if(youscroll == 1)
   {
       keydown = 0;
       f=0;
       unscrollval = 54;
       scrollcnt = 0;
       keydown = 0;
       downinc = 0;
       downdec = 0;
       youscroll = 0;
   }
   if(keyvalue == 40) 
       keydown++;
   else
   if(keyvalue == 38)
       keydown--;
   keydown = keydown%(li.length+1);
                   
//alert(li.length);
   if(keydown == 0)
   {
        file.value = inpval;
        downinc = 0;
        f = 0;
        unscrollval = 54;
        scrollcnt = 0;
        ele.scrollTo(0 , scrollcnt);   
        var selector = document.getElementById('selector');
        if(selector !== null)
            selector.remove();
   }

   if(keydown>0)
   {//alert(keydown);
        file.value = li[keydown-1].innerHTML;
        if(f == 0 && (keyvalue == 38 || keyvalue == 40))
        {
            ele.scrollTop = 1;
            var div = document.createElement('div');
            div.setAttribute('class','selector');
            div.setAttribute('id','selector');
            div.setAttribute('onclick','openthefile(event)');         
            document.getElementById('drop').append(div);
            f = 1;
        }
        if(nfelements <= 4)
            document.getElementById('selector').style.width = "698px";
        else
            document.getElementById('selector').style.width = "690px";
        if(keyvalue == 38)
        {
            if(unscrollval > 117)
            {
                unscrollval -= 63;
                document.getElementById('selector').style.top = unscrollval + "px";
            }
            else
            { 
                scrollcnt = scrollcnt - 63;    
                ele.scrollTop=scrollcnt;
            }
        }
        else
        if(keyvalue == 40)
        {
            if(unscrollval < 306)
            {
                unscrollval += 63;
                document.getElementById('selector').style.top = unscrollval + "px";
            }
            else
            {
                scrollcnt = scrollcnt + 63;    
                ele.scrollTop=scrollcnt;                     
            }   
        }
    }
    else
    if(keydown < 0)
    {
        if(f == 0 && (keyvalue == 38 || keyvalue == 40))
        {
            ele.scrollTop = 1;
            downdec = 0;
            unscrollval = 117 + 63 * nfelements;
            if(nfelements > 4)
                unscrollval = 369;
            scrollcnt = nfelements*63 -63*4;
            var div = document.createElement('div');
            div.setAttribute('class' , 'selector');
            div.setAttribute('id' , 'selector');
            div.setAttribute('onclick','openthefile(event)');
            div.style.top = unscrollval + "px";
            document.getElementById('drop').append(div);
            ele.scrollTo(0 , ele.scrollHeight);
            f = 1;
        }
        if(nfelements <= 4)
        {
            document.getElementById('selector').style.width = "698px";
        }
        else
            document.getElementById('selector').style.width = "690px";

        file.value = li[nfelements + keydown].innerHTML;
       
        if(keyvalue == 38)
        {
            if(unscrollval > 117)
            {
                unscrollval -= 63;
                document.getElementById('selector').style.top = unscrollval + "px";
            }
            else
            {
                scrollcnt = scrollcnt - 63;
                ele.scrollTop = Math.abs(scrollcnt);
            }
        }
        else
        if(keyvalue == 40)
        {
            if(unscrollval < 306)
            {
                unscrollval += 63;
                document.getElementById('selector').style.top = unscrollval + "px";
            }
            else
            {
                scrollcnt = scrollcnt + 63;
                ele.scrollTop = Math.abs(scrollcnt);
            }
        }
    }
}
    
    
function connectto()
{

//    netscape.security.PriviligeManager.enablePrivilege('UniversalXPConnect');
    var selector = document.getElementById('selector');
    var ul = document.getElementById('drop-down');
    if(selector !== null)
    {
        selector.remove();
        f=0;
        unscrollval = 54;
        scrollcnt = 0;
        keydown = 0;
        downinc = 0;
        downdec = 0;
    }
    var x = document.getElementById("file").value;
      
    if(ul)
    {
        while(ul.firstChild)
            ul.removeChild(ul.firstChild);
    }
    if(window.XMLHttpRequest)
    {
        server = new XMLHttpRequest();
    }
    else 
    {
        server = new ActiveXObject("Microsoft.XMLHTTP");
    }
    //alert(searching_type);
    if(searching_type == "Context")
        var url = "http://192.168.43.160:8083/hello/foo1?text="+x+"&type=cb";    
    else
        var url = "http://192.168.43.160:8083/hello/foo1?text="+x+"&type=sb";        
//        var url = "http://localhost:8083/Try/Ghazi1?search="+x;            
    server.open("GET",url,true);
    server.onreadystatechange = callback;
    server.send();  
}

    
function callback()
{
    if(server.readyState == 4 && server.status == 200)
    {
        var x = (server.responseText);
     //   alert(x);
        var c = x.split(" ");
        var l = c.length;
//        alert(l);
        var inp = document.getElementById('file').value;
        inpval = inp;
        if(inp.length > 0)
        { 
            document.getElementById('drop-down').setAttribute('style','z-index:3;');
            document.getElementById('refresh1').setAttribute('style','z-index:1;');
            document.getElementById('more').setAttribute('style','z-index:1;');
            document.getElementById('delete').setAttribute('style','z-index:1;');
            document.getElementById('ListA').setAttribute('style','z-index:1;');
        }
        else
        {
            document.getElementById('drop-down').setAttribute('style','z-index:2;');
            document.getElementById('refresh1').setAttribute('style','z-index:2;');
            document.getElementById('more').setAttribute('style','z-index:2;');
            document.getElementById('delete').setAttribute('style','z-index:2;');
            document.getElementById('ListA').setAttribute('style','z-index:2;');            
        }
        var ul = document.getElementById('drop-down');
        nfelements = l-1;
        if(inp.length > 0)
        {
            for(var i = 0 ; i < l-1 ; i++)
            {
                var anchor = document.createElement('a');
                anchor.id = "id" + i;
                anchor.setAttribute("onclick","javascript:openthefile(this.id)");
                anchor.value = c[i];
                if(searching_type == "Context")
                    anchor.setAttribute("href","http://192.168.43.160:8083/"+c[i]);                    
                else    
                    anchor.setAttribute("href","http://192.168.43.124:8080/ss/"+c[i]);
                var linew = document.createElement('li');
                linew.setAttribute('class','drop-li');
                var value = document.createTextNode(c[i]);
                linew.appendChild(value);
                anchor.appendChild(linew);
                ul.append(anchor);
                keydown = 0;
            }
            var li = document.getElementsByClassName('drop-li');                
            if(document.getElementById('drop-down').scrollWidth <= 705)
            {
                var i = 0 
                while(li[i])
                {
                    li[i].style.width = "660px";
                    i++;
                }
            }
            else
            {
                var i = 0 
                while(li[i])
                {
                    li[i].style.width = "1500px";
                    i++;
                }
            }
        }        
    }
}
</script> 
</body>
</html>