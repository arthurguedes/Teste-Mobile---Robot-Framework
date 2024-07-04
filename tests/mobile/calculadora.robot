*** Settings ***
Library    AppiumLibrary
Test Teardown    Close Application

*** Variables ***
${SAUCE_USERNAME}    oauth-arthur.guedes-058cf
${SAUCE_ACCESS_KEY}    3fb76505-cf28-48d9-ae32-e3ea40d5907b
${REMOTE_URL}    https://${SAUCE_USERNAME}:${SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub

*** Test Cases ***
Calculo
    Open Application    ${REMOTE_URL}    platformName=Android    appium:platformVersion=9.0    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    appium:deviceOrientation=portrait    appium:app=storage:filename=Calculator_8.4 (503542421)_APKPure.apk    appium:appPackage=com.google.android.calculator    appium:appActivity=com.android.calculator2.Calculator    browserName=    appium:ensureWebviewsHavePages=${True}    appium:nativeWebScreenshot=${True}    appium:newCommandTimeout=${3600}    appium:connectHardwareKeyboard=${True}

    #adicao
    ${elemento1}=    Set Variable    accessibility_id=10
    Click Element    ${elemento1}

    ${elemento2}=    Set Variable    accessibility_id=plus
    Click Element    ${elemento2}

    ${elemento3}=    Set Variable    accessibility_id=10
    Click Element    ${elemento3}

    ${elemento4}=    Set Variable    accessibility_id=equals
    Click Element    ${elemento4}

    #subtracao
    ${elemento5}=    Set Variable    accessibility_id=25
    Click Element    ${elemento5}

    ${elemento6}=    Set Variable    accessibility_id=minus
    Click Element    ${elemento6}

    ${elemento7}=    Set Variable    accessibility_id=15
    Click Element    ${elemento7}

    ${elemento8}=    Set Variable    accessibility_id=equals
    Click Element    ${elemento8}

    #multiplicacao
    ${elemento9}=    Set Variable    accessibility_id=15
    Click Element    ${elemento9}

    ${elemento10}=    Set Variable    accessibility_id=multiply
    Click Element    ${elemento10}

    ${elemento11}=    Set Variable    accessibility_id=6
    Click Element    ${elemento11}

    ${elemento12}=    Set Variable    accessibility_id=equals
    Click Element    ${elemento12}

    #divisao
    ${elemento13}=    Set Variable    accessibility_id=45
    Click Element    ${elemento13}

    ${elemento14}=    Set Variable    accessibility_id=divide
    Click Element    ${elemento14}

    ${elemento15}=    Set Variable    accessibility_id=5
    Click Element    ${elemento15}

    ${elemento16}=    Set Variable    accessibility_id=equals
    Click Element    ${elemento16}
