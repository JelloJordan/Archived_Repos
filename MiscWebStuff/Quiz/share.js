var size = 3;           //the amount of data to read from the string

var shareLink = "";     //The part of the URL that isn't data
var shareData = "";     //The part of the URL that is data
var Content = "";       //The text shown from the results

function init()     //called on body tag load
{
    readData();     //The data is pulled from the URL
    setContent();
    updateLink();   //The share link is updated
}

function setContent()
{

    if(shareData[0] == '1')
        Content += "You picked A. ";

    if(shareData[1] == '1')
        Content += "You picked B. ";

    if(shareData[2] == '1')
        Content += "You picked C. ";

    if( shareData[0] == "0" &&
        shareData[1] == "0" &&
        shareData[2] == "0")
        Content += "You picked nothing. ";

    document.getElementById("TextContent").innerHTML = Content;

}

function updateLink()
{

    document.getElementById("linkText").value = shareLink + "?" + shareData;

}

function readData()
{   
    var foundData = window.location.href.split("?");
    shareLink = foundData[0];
    shareData = foundData[1];
}