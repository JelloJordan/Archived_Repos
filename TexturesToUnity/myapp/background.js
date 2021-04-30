chrome.runtime.onMessage.addListener(
    function(message, sender, sendResponse) 
    {
        switch (message.txt) 
        {
            case "DownloadButtonPressed":

                

                DownloadNow(message.tab);
            
            

            break;
            case "CookieTogglePressed":


                ToggleCookieClicker(message.tab);

            break;
            default:
                alert("Request Error in background js file");
        }
    }
);

function DownloadNow(Tab)
{

    //console.log("Request Recieved");
    //console.log(Tab.id);

    let msg = 
    {
        txt: "Download",
        info: [true,true]
    }

    

    chrome.tabs.sendMessage(Tab.id, msg);


}

function ToggleCookieClicker(Tab)
{

    //console.log("Request Recieved");
    //console.log(Tab.id);

    let msg = 
    {
        txt: "ClickTheCookie"
    }

    

    chrome.tabs.sendMessage(Tab.id, msg);


}

chrome.downloads.onCreated.addListener(function (downloadItem)
{ 
    console.log("File URL :  " , downloadItem.finalUrl);
});