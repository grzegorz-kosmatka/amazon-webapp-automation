*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Config.robot

*** Keywords ***
Begin web test
    Open Browser    about:blank    ${BROWSER}
    Maximize browser window

End web test
    Close all browsers