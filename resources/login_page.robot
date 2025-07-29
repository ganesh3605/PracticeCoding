*** Settings ***
Library    SeleniumLibrary
Resource   common_keywords.robot

*** Variables ***
# Locators specific to the Login Page
${USERNAME_FIELD}    id:user-name
${PASSWORD_FIELD}    id:password
${LOGIN_BUTTON}      id:login-button
${ERROR_MESSAGE}     //h3[@data-test="error"] # Locator for the error message

*** Keywords ***
Perform Login
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Button    ${LOGIN_BUTTON}

Verify Error Message
    [Arguments]    ${expected_message}
    Wait Until Element Is Visible    ${ERROR_MESSAGE}
    Element Text Should Be    ${ERROR_MESSAGE}    ${expected_message}