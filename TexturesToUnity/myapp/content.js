//console.log("Init");

var enabled = false;

window.setInterval(function(){
    
    if(enabled)
        ClickTheCookie();

  }, 1);

function ClickTheCookie()
{
    //console.log("CLICK");




    try{

    
        document.getElementById('bigCookie').click();
        try{
            document.getElementById('upgrade0').click();
        

        let name = "product";
        for(var i = 0; i < 20; i++)
            document.getElementById(name + i).click();

        }catch(error){}

    }
    catch(error){console.error("Not on the correct site"); enabled = false;}

    //document.getElementById('virtualCookie').click();
    /*let x = document.getElementsByTagName('p');
    for(y of x)
    {

        //document.getElementById(y.id).parentNode.removeChild(y);
        //y.style['font-size'] = '200%';

    }*/
    
}

function Download(info)
{

    //console.log("Download Pressed");

    try{
        var name = document.getElementsByTagName('H1')[0].innerHTML;
        //console.log(name);

        if(info[0])
        {
            DownloadTexture("scan-albedo");
        }
        if(info[1])
        {
            var millisecondsToWait = 1000;
            setTimeout(function() {
                DownloadTexture("scan-normal");
            }, millisecondsToWait);
        }

    }catch(error){console.error("You have to be on Textures.com to use the download button");}
    
}

function DownloadTexture(name)
{

    var buttons = document.getElementsByClassName('download_size');
    var found = false;

    for(b of buttons)
    {
        //console.log(b.attributes.imagetype.nodeValue);
        //console.log(b.childNodes[1].innerText);

        if(b.attributes.imagetype.nodeValue === name && b.childNodes[1].innerText === "1024x1024" && !found)
        {
            b.click();
            found = true;
            console.log("FOUND " + name + "!");
        }
    }       

}

chrome.runtime.onMessage.addListener(gotMessage);

function gotMessage(message)
{
    //console.log(message.txt);
    //console.log("Got Message");

    if(message.txt === "ClickTheCookie")
        enabled = !enabled;
    if(message.txt === "Download")
        Download(message.info);
        //ClickTheCookie();
    
}