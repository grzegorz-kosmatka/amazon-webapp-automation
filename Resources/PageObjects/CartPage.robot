*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Scope.robot

*** Keywords ***
Verify 'Added to Cart' Text
    wait until page contains    ${CARTPAGE_VERIFY_TEXT}