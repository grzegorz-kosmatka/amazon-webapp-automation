*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Locators.robot
Resource    ../Variables/Scope.robot

*** Keywords ***
Choose Product
    Verify Search Completed
    Click Product Link

Verify Search Completed
    wait until page contains    ${RESULTPAGE_VERIFY_SELECTED_ITEM_RESULTS}
    wait until page contains    ${RESULTPAGE_VERIFY_ELEMENT_VISIBLE}

Click Product Link
    click Link    ${RESULTPAGE_SELECTED_ITEM_CLICK_LINK}

Verify Product Count
    [Arguments]    ${ExpectedProductCount}
    page should contain element    ${RESULTPAGE_COUNTED_ITEMS}    limit=${ExpectedProductCount}
