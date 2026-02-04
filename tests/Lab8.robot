*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${URL}           https://computing.kku.ac.th
${CHROMEDRIVER}  /usr/bin/chromedriver

*** Keywords ***
Open Browser To Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu

    ${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service(${CHROMEDRIVER})    sys
    Create Webdriver    Chrome    service=${service}    options=${options}
    Go To    ${URL}

*** Test Cases ***
Open KKU Website
    Open Browser To Login Page
    Close Browser
