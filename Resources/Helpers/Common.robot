*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../Variables/Config.robot

*** Keywords ***
Begin web test
    ${Get_accesskey} =    get environment variable    SAUCELABS_ACCESSKEY
    ${Get_username} =    get environment variable    SAUCELABS_USERNAME
    ${Get_endpoint} =    get environment variable    SAUCELABS_ENDPOINT
    ${Concatenated_credentials} =    catenate    https://${Get_username}:${Get_accesskey}@${Get_endpoint}

    Open Browser    about:blank    ${BROWSER}
    ...    remote_url=${Concatenated_credentials}
    ...    desired_capabilities=${DESIRED_CAPABILITIES}
    Maximize browser window

End web test
    Close all browsers
