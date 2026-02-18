# Retro Calculator Widget

A retro-themed calculator widget for macOS, built with Electron.

## How to Run the Calculator App

1. Open your terminal.
2. Navigate to the project directory:
   ```bash
   cd retro-calculator-widget
   ```
3. Install dependencies:
   ```bash
   npm install
   ```
4. Start the app:
   ```bash
   npm start
   ```


## How to Create the Clickable App (Installation)
To turn this into a real Mac app you can drag to Applications:


1. Open Terminal.
2. Navigate to the project directory:
   ```bash
   cd retro-calculator-widget
   ```
3. Run this command one time:

   ```bash
   npm install
   ```
3. Run the build command:
   ```bash
   npm run package-mac
   ```
4. A new folder called **release-builds** will appear. 
5. Inside it, you will find **retro-calculator-darwin-x64**. 
6. Open that folder and drag **retro-calculator.app** to your **Applications** folder.


## How to Share This App (Important!)
To share this calculator with friends or specific users:

1.  **Do NOT** just send the `.app` file directly (it might break).
2.  Go to the `release-builds/retro-calculator-darwin-x64` folder.
3.  **You only need the `retro-calculator.app` file.** (You can ignore the LICENSE and VERSION text files).
4.  **Right-click** on `retro-calculator.app` and select **Compress "retro-calculator.app"**.
5.  This creates a **zip file**. Send this zip file to your friend.


### How Your Friend Should Open It
Since this app is not signed by Apple (it's a personal project):

1.  They must **unzip** the file.
2.  Drag the app to their **Applications** folder.
3.  **First Launch**: 
    *   **Right-click** (or Control-click) the app.
    *   Select **Open**.
    *   Click **Open** in the dialog box.

### Building for Other Operating Systems
The source code works on Mac, Windows, and Linux.

- **Mac**: `npm run package-mac`
- **Windows**: `npm run package-win`
- **Linux**: `npm run package-linux`


6.  *Note: If they just double-click it, macOS might block it saying it's from an unidentified developer.*


## Installation from GitHub
If you are a developer or want to build it yourself from source:

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/supriyosen/retro-calculator-widget.git
    cd retro-calculator-widget
    ```
2.  **Install dependencies**:
    ```bash
    npm install
    ```
3.  **Build the App**:
    ```bash
    npm run package-mac
    ```
4.  **Run the App**:
    *   Find the `.app` file in `release-builds/`.
    *   Drag it to your Applications folder.
