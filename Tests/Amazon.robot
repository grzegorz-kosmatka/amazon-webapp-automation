*** Settings ***
Documentation    Test suite containing test cases for Amazon's web app
Resource    ../Resources/Helpers/AmazonApp.robot
Resource    ../Resources/Helpers/Common.robot
Resource    ../Resources/Helpers/DataManager.robot

Test Setup    Common.Begin web test
Test Teardown    Common.End web test

*** Test Cases ***
Logged-out User should be able to search for products
    [Documentation]    Test Case 1
    [Tags]    Smoke
    log    Executing test 1

    AmazonApp.Search for Products

Logged-out User should be able to view a product
    [Documentation]    Test Case 2
    [Tags]    Basic
    log    Executing test 2

    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged-out User should be able to add a product to the cart
    [Documentation]    Test Case 3
    [Tags]    Advanced
    log    Executing test 3

    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to the Cart

Logged-out User should be able to see 48 products each search run
    [Documentation]    Test Case 4
    [Tags]    Advanced
    log    Executing test 4

    AmazonApp.Search for Products
    AmazonApp.Verify Results Page Contains Expected Number of Products    ${RESULTPAGE_EXPECTED_NUMBER_COUNT}

Invalid sign-in scenarios should display correct error message
    ${InvalidSignInScenarios} =    DataManager.Get CSV Data    ${INVALID_CREDENTIALS_SCENARIOS_CSV_FILE}
    AmazonApp.Test multiple log-in scenarios against valid error messages    ${InvalidSignInScenarios}