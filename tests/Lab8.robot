*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://computing.kku.ac.th
${CHROMEDRIVER}    /usr/bin/chromedriver

*** Keywords ***
Open Browser To Login Page
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --disable-gpu

    Create Webdriver    Chrome    executable_path=${CHROMEDRIVER}    options=${chrome_options}
    Go To    ${URL}

*** Test Cases ***
Open KKU Website
    Open Browser To Login Page
    Close Browser
