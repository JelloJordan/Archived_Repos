/*

console.log("background.js loaded");

chrome.action.onClicked.addListener((tab) =>
{
       //chrome.tabs.create({url: "https://www.youtube.com"});
       
       chrome.scripting.executeScript({
         target: { tabId: tab.id },
         files: ['./content.js']
       });
       
       console.log("injected content");
});*/
/*
chrome.runtime.onMessage.addListener((sent) => {
  
  console.log(sent.message);
  
  if (!sent.message.swapped)
  {
      sent.message.swapped = true;
      
      chrome.tabs.query({currentWindow: true, active: true}, function (tabs){
          var activeTab = tabs[0];
          chrome.tabs.sendMessage(activeTab.id, {message : sent.message});
      });
  }
  
});*/