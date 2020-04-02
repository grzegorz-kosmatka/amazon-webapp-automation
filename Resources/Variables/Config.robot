*** Variables ***
${APP_ENVIRONMENT} =    prod
&{APP_UNDERTEST}    prod=https://amazon.com
${BROWSER} =    chrome
${INVALID_CREDENTIALS_SCENARIOS_CSV_FILE} =    Resources/Data/InputData.csv
${DESIRED_CAPABILITIES} =    name:Windows 10 + edge chromium,platformName:Windows 10,browserName:MicrosoftEdge,browserVersion:80.0
