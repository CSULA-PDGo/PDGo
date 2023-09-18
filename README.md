# Uploading to PowerApps
1. Edit the settings.sh to reflect your name and PDGo Number
2. Run [upload.sh](./upload.sh) (DO NOT CANCEL DURING UPLOAD, if you do, contact Elias (eschablowski on Discord))

# Uploading changes to GitHub
1. Edit the settings.sh to reflect your name and PDGo Number
2. Run [download.sh](./download.sh), this downloads your changes from PowerApps and normalizes the app names
3. Commit and Push your files (DO NOT COMMIT [settings.sh](./settings.sh))

# Install
## 1. Required Software
1. [Visual Studio Code](https://code.visualstudio.com)
2. [.NET Core 6 SDK](https://dotnet.microsoft.com/en-us/download/dotnet/6.0)
3. [Power Platform Tools plugin for VSCode](https://marketplace.visualstudio.com/items?itemName=microsoft-IsvExpTools.powerplatform-vscode)

## 2. Open this folder in VSCode

## 3. Create an authentication profile
1. Run `pac auth create`
2. Login in the browser
3. Return to VSCode

## 4. Change settings to allow adjustments in web UI
1. Change the `<Your Name>` in [settings.sh](./settings.sh)
