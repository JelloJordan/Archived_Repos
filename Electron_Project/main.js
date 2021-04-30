const { app, BrowserWindow } = require('electron')

function createWindow() {
    // Create the browser window.
    let win = new BrowserWindow({
        width: 1280,
        height: 720,
        webPreferences: {
            nodeIntegration: true
        }
    })
    
    win.removeMenu()

    // and load the index.html of the app.
    win.loadFile('index.html')
}

app.on('ready', createWindow)

//npm install electron-packager -g
//electron-packager . Name --platform=win32 --arch=x64