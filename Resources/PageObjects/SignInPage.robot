*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Locators.robot
Resource    ../Variables/Scope.robot

*** Keywords ***
Verify SignIn Page Loaded
    wait until element contains    ${SIGNINPAGE_VERIFY_ELEMENTS_EXISTS}    ${SIGNINPAGE_VERIFY_SIGNIN_TEXT}

Enter Email
    [Arguments]    ${Credentials}
    input text    ${SIGNINPAGE_EMAIL_INPUT}    ${Credentials[0]}

Click Continue Button
    click button    ${SIGNINPAGE_CONTINUE_BUTTON}

Verify Expected error message
    [Arguments]    ${ExpectedErrorMessage}
    page should contain    ${ExpectedErrorMessage[2]}
