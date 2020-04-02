*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Config.robot
Resource    ../Variables/Locators.robot
Resource    ../Variables/Scope.robot

*** Keywords ***
Load Starter Page
    Load
    Verify Starter Page Loaded

Load
   go to    ${APP_UNDERTEST.${APP_ENVIRONMENT}}

Verify Starter Page Loaded
    wait until element is visible    ${LANDINGPAGE_VERIFY_LOGO}
    wait until page contains    ${LANDINGPAGE_VERIFY_TEXT}

Redirect to SignIn Page
    Hit SignIn Link

Hit SignIn link
    click link    ${LANDINGPAGE_SIGNIN_LINK_CLICK}