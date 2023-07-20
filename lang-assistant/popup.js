console.log("popup.js loaded");

chrome.storage.local.get('todefine', (result) =>
{
    document.getElementById('todefine').value = result.todefine;
});

chrome.storage.local.get('totranslate', (result) =>
{
    document.getElementById('totranslate').value = result.totranslate;
});

/*
document.getElementById('form').addEventListener('keyup', function (event)
{
    if (event.code === 'Enter')
    {
        if (document.activeElement == document.getElementById('totranslate'))
        {
            document.getElementById('translate').click();
        } else if (document.activeElement == document.getElementById('todefine'))
        {
            document.getElementById('define').click();
        }
    }
});*/

document.getElementById('translate').addEventListener('click', function ()
{
    chrome.storage.local.set({ 'totranslate': document.getElementById('totranslate').value });
    
    let msg =
    {
        type: "yandex",
        content: document.getElementById('totranslate').value,
    };
 
    var found = false;
    var tabId;
    chrome.tabs.query({}, function (tabs) {
        for (var i = 0; i < tabs.length; i++) {
            if (tabs[i].url.search("https://translate.yandex.com/") > -1){
                found = true;
                tabId = tabs[i].id;
            }
        }
        if (found == false){
            chrome.tabs.create({url: "https://translate.yandex.com/"});
        } else {
            chrome.tabs.update(tabId, { selected: true });
            chrome.tabs.sendMessage(tabId, {message : msg});
        }
    });
});

document.getElementById('define').addEventListener('click', function ()
{
    chrome.storage.local.set({ 'todefine': document.getElementById('todefine').value });
    
    let msg =
    {
        type: "wiktionary",
        content: document.getElementById('todefine').value.toLowerCase(),
    };
 
    var found = false;
    var tabId;
    chrome.tabs.query({}, function (tabs) {
        for (var i = 0; i < tabs.length; i++) {
            if (tabs[i].url.search("https://en.wiktionary.org/") > -1){
                found = true;
                tabId = tabs[i].id;
            }
        }
        if (found == false){
            chrome.tabs.create({url: "https://en.wiktionary.org/"});
        } else {
            chrome.tabs.update(tabId, { selected: true });
            chrome.tabs.sendMessage(tabId, {message : msg});
        }
    });
});