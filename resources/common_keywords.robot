
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# Global settings, not page-specific locators
${BROWSER}           Chrome
${SAUCE_DEMO_URL}    https://www.saucedemo.com/

*** Keywords ***
Open Browser To Sauce Demo
    Open Browser    ${SAUCE_DEMO_URL}    ${BROWSER}
    Maximize Browser Window

Close Browser Open
    Close Browser