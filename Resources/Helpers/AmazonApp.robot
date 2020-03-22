*** Settings ***
Resource    ../PageObjects/CartPage.robot
Resource    ../PageObjects/LandingPage.robot
Resource    ../PageObjects/ProductPage.robot
Resource    ../PageObjects/SearchResultsPage.robot
Resource    ../PageObjects/SignInPage.robot
Resource    ../PageObjects/TopNavigationElement.robot

*** Keywords ***
Search for products
    LandingPage.Load Starter Page
    TopNavigationElement.Search for Products

Select product from search results
    SearchResultsPage.Choose Product

Add product to the cart
    ProductPage.Click Cart Button
    CartPage.Verify 'Added to Cart' Text

Verify Results Page Contains Expected Number of Products
    [Arguments]    ${ExpectedProductCount}
    SearchResultsPage.Verify Product Count    ${ExpectedProductCount}

Test multiple log-in scenarios against valid error messages
    [Arguments]    ${InvalidSignInScenarios}
    :FOR    ${SignInScenario}    IN    @{InvalidSignInScenarios}
    \    run keyword and continue on failure    Load Sign-in Page
    \    run keyword and continue on failure    Attempt to Sign-in    ${SignInScenario}
    \    run keyword and continue on failure    Verify Sign-in page against error message    ${SignInScenario}

Load Sign-in Page
    LandingPage.Load Starter Page
    LandingPage.Redirect to SignIn Page
    SignInPage.Verify SignIn Page Loaded

Attempt to Sign-in
    [Arguments]    ${Credentials}
    SignInPage.Enter Email    ${Credentials}
    SignInPage.Click Continue Button

Verify Sign-in page against error message
    [Arguments]    ${ExpectedErrorMessage}
    SignInPage.Verify Expected error message    ${ExpectedErrorMessage}