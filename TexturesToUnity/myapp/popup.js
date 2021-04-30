document.addEventListener('DOMContentLoaded', function () 
{
    var button = document.getElementById('DownloadButton');
    button.addEventListener('click', download);

    var button = document.getElementById('CookieClicker');
    button.addEventListener('click', toggleCookieClicker);     
});

function download() 
{

    //console.log("Download Button Pressed");

    var query = { active: true, currentWindow: true };
    chrome.tabs.query(query, downloadCallback);
    
}

function toggleCookieClicker() 
{

    //console.log("Download Button Pressed");

    var query = { active: true, currentWindow: true };
    chrome.tabs.query(query, toggleCookieClickerCallback);
    
}

function downloadCallback(tabs) 
{
    var currentTab = tabs[0]; 

    let msg = 
    {
        txt: "DownloadButtonPressed",
        tab: currentTab
    }

    //console.log(msg.tab);

    chrome.runtime.sendMessage(msg);
}

function toggleCookieClickerCallback(tabs) 
{
    var currentTab = tabs[0]; 

    let msg = 
    {
        txt: "CookieTogglePressed",
        tab: currentTab
    }

    chrome.runtime.sendMessage(msg);
}