*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Locators.robot

*** Keywords ***
Click Cart Button
    click button    ${PRODUCTPAGE_ADD_TO_CART_BUTTON_CLICK}
