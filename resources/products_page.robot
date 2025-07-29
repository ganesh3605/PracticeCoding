*** Settings ***
Library    SeleniumLibrary
Resource   common_keywords.robot

*** Variables ***
# Locators specific to the Products Page
${PRODUCT_PAGE_TITLE}    css:.title

*** Keywords ***
Verify Product Page Is Displayed
    Wait Until Page Contains Element    ${PRODUCT_PAGE_TITLE}
    Element Text Should Be    ${PRODUCT_PAGE_TITLE}    Products