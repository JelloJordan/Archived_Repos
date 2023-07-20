console.log("content.js loaded");

if (document.location.href.search("https://en.wiktionary.org/") > -1) {
    try {
        document.getElementById('Russian').scrollIntoView();
    }catch{}
}
    
chrome.runtime.onMessage.addListener((sent) =>
{
    console.log(sent.message.content);
    
    if (sent.message.type === "yandex")
    {
        document.getElementById('fakeArea').innerHTML = sent.message.content;
        
        document.getElementById('textbox').dispatchEvent(new Event("input"));
    } else if (sent.message.type === "wiktionary")
    {
        document.getElementById('searchInput').value = sent.message.content;
        document.getElementById('searchButton').click();
    }
});