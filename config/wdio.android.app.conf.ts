import { join } from 'path';
import config from './wdio.shared.local.appium.conf';

// ============
// Specs
// ============
config.specs = [
    './tests/specs/**/app*.spec.ts',
];

// ============
// Capabilities
// ============
// For all capabilities please check
// http://appium.io/docs/en/writing-running-appium/caps/#general-capabilities
config.capabilities = [
    {
        // The defaults you need to have in your config
        platformName: 'Android',
        maxInstances: 1,
        // For W3C the appium capabilities need to have an extension prefix
        // http://appium.io/docs/en/writing-running-appium/caps/
        // This is `appium:` for all Appium Capabilities which can be found here

        'appium:deviceName': 'v4w4zl4xkntcpj4l',
        'appium:platformVersion': '10.0',

        //'appium:deviceName': 'emulator-5554',
        ///////////'appium:platformVersion': '11.0',

        'appium:orientation': 'PORTRAIT',
        'appium:automationName': 'UiAutomator2',
        // The path to the app
        'appium:app': join(process.cwd(), './apps/br_com_voltbras_wecharge_v11.6.4.apk'),
        // @ts-ignore
        'appium:appWaitActivity': 'br.com.voltbras.wecharge',
        'appium:newCommandTimeout': 240,
        'appium:noReset': true,
        'appium:fullReset': false

    },
];

exports.config = config;
