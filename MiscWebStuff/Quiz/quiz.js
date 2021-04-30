var boxesChecked = [];  //Bool Array storing checkbox values
var size = 3;           //Amount of checkboxes

var shareLink = "";     //The part of the URL that isn't data
var shareData = "000";     //The part of the URL that is data

function init()         //Called on load
{

    shareLink = window.location.href;  //The URL is assigned

    for (var i = 0; i < size; i++)  //The checkbox array is initialized as false
    {
        boxesChecked.push(false);
    }

}

function changeData(Index)          //Called everytime a checkbox is clicked to update the array
{
    boxesChecked[Index] = !boxesChecked[Index];
    updateLink();                   //The checkbox array is converted to a string

}

function changePage()
{

    window.location.replace('results.html' + "?" + shareData);  //The webpage is swapped to the results page containing the proper data

}

function updateLink()
{

    var linkInts = [];

    for (var i = 0; i < size; i++) 
    {
        if(boxesChecked[i])
            linkInts.push(1);
        else
            linkInts.push(0);
    }

    shareData = linkInts.toString();
    shareData = shareData.replace(/,/g , ""); //g for global to replace all instances

}