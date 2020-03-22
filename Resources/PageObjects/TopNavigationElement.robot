*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Locators.robot
Resource    ../Variables/Scope.robot

*** Keywords ***
Search For Products
    Enter Search Term
    Hit Selected Choice

Enter Search Term
    input text    ${TOPNAV_SEARCH_TEXTBOX}    ${TOPNAV_SEARCH_TERM}

Hit Selected Choice
    click button    ${TOPNAV_SEARCH_BUTTON_CLICK}