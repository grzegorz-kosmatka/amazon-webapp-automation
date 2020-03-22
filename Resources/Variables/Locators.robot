*** Variables ***
${LANDINGPAGE_VERIFY_LOGO} =    xpath=//*[@id="nav-logo"]/a
${LANDINGPAGE_SIGNIN_LINK_CLICK} =    xpath=//*[@id="nav-link-accountList"]
${PRODUCTPAGE_ADD_TO_CART_BUTTON_CLICK} =    xpath=//*[@id="add-to-cart-button-ubb"]
${RESULTPAGE_SELECTED_ITEM_CLICK_LINK} =     xpath=//div[@data-asin="B074CPNX4Q"]//h2/a
${RESULTPAGE_COUNTED_ITEMS} =     css=div[class="s-result-list s-search-results sg-row"] > div[data-asin]
${SIGNINPAGE_VERIFY_ELEMENTS_EXISTS} =    xpath=//div/div/h1
${SIGNINPAGE_EMAIL_INPUT} =    //*[@id="ap_email"]
${SIGNINPAGE_CONTINUE_BUTTON} =    xpath=//span[@class="a-button-inner"]/input
${TOPNAV_SEARCH_TEXTBOX} =    id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON_CLICK} =    xpath=//div[@class="nav-search-submit nav-sprite"]/input