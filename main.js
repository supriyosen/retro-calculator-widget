const { app, BrowserWindow } = require('electron');
const path = require('path');

function createWindow() {
    const mainWindow = new BrowserWindow({
        width: 380, // Slightly larger than CSS width (360px + padding)
        height: 650, // Enough height for the calculator
        frame: false, // Frameless window
        transparent: true, // Transparent background
        resizable: false, // Fixed size like a widget
        hasShadow: true,
        webPreferences: {
            nodeIntegration: true,
            contextIsolation: false
        },
        titleBarStyle: 'customButtonsOnHover'
    });

    mainWindow.loadFile('index.html');
}

app.whenReady().then(() => {
    createWindow();

    app.on('activate', () => {
        if (BrowserWindow.getAllWindows().length === 0) createWindow();
    });
});

app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') app.quit();
});