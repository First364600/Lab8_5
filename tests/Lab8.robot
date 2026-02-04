*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google Page
    Open Browser To Login Page

*** Keywords ***
Open Browser To Login Page
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Evaluate    setattr($chrome_options, 'binary_location', "/usr/bin/chromium")
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --headless
    
    Create Webdriver    Chrome    options=${chrome_options}
    Go To    https://computing.kku.ac.th