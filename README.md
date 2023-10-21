# QA Implementation
# 
# This boilerplate is currently based on:

- **WebdriverIO:** `7.##.#`
- **Appium:** `1.22.#`

# Tips and Tricks

## Useful information
Check the following sites for more information about WebdriverIO/Appium
- [WebdriverIO](http://webdriver.io)
- [Appium Docs](http://appium.io/docs/en/about-appium/intro/)
 

# Installation Appium

- Installing Appium

- Install Appium-doctor

- Install Android Studio + Android SDK

- Install Appium

- npm i --location=global appium

- appium driver install uiautomator2

- Install Adb (para devices fisicos)

- Configure JAVA_HOME e ANDROID_HOME


# Configurações

- After Git clone < Project >
- Copy the .apk file into root project folder ./apps
- executar `yarn install`
- Configure capabilities the wdio.android.app.conf.ts or wdio.ios.app.conf.ts according your devices  (Siga Abaixo)
- executar tests `npm run android.app` or `npm run android.browser`


wdio.android.app.conf.ts
config.capabilities = [
    {
        platformName: 'Android',
        maxInstances: 1,
        // Configuração para dispositivo Fisico   
        'appium:deviceName': '<ADB device Name>',
        'appium:platformVersion': '10.0',
        // Configuração para emulador
        //'appium:deviceName': 'emulator-5554',
        //'appium:platformVersion': '11.0',
        'appium:orientation': 'PORTRAIT',
        'appium:automationName': 'UiAutomator2',
        // Caminho do APP 
        'appium:app': join(process.cwd(), './apps/br_com_voltbras_wecharge_v11.6.4.apk'),
        // @ts-ignore
        'appium:appWaitActivity': 'br.com.voltbras.wecharge',
        'appium:newCommandTimeout': 240,
        'appium:noReset': true,
        'appium:fullReset': false    }

wdio.shared.conf.ts

    mochaOpts: {
        ui: "bdd",
        /**
         *  Gerenciar o Timeout geral da aplicação dependendo do hardware que esta executando  
         */
        timeout: 10 * 60 * 1000,  
    },


 
