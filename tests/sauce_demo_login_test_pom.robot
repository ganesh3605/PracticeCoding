*** Settings ***
Library    SeleniumLibrary

Resource   ../resources/common_keywords.robot
Resource   ../resources/login_page.robot        # Page Object for the Login Page
Resource   ../resources/products_page.robot     # Page Object for the Products Page

Test Setup    common_keywords.Open Browser To Sauce Demo
Test Teardown    common_keywords.Close Browser Open

*** Variables ***
# Test Data - No locators here!
${STANDARD_USER}     standard_user
${LOCKED_OUT_USER}   locked_out_user
${PROBLEM_USER}      problem_user
${PERFORMANCE_GLITCH_USER}    performance_glitch_user
${PASSWORD}          secret_sauce

*** Test Cases ***
Successful Login With Standard User
    [Documentation]    Tests a successful login with a standard user.
    login_page.Perform Login    ${STANDARD_USER}    ${PASSWORD}
    products_page.Verify Product Page Is Displayed

Invalid Login With Locked Out User
    [Documentation]    Tests an unsuccessful login with a locked out user.
    login_page.Perform Login    ${LOCKED_OUT_USER}    ${PASSWORD}
    #login_page.Verify Error Message    Epic sadface: Sorry, this user has been locked out.

Invalid Login With Incorrect Password
    [Documentation]    Tests an unsuccessful login with incorrect password.
    login_page.Perform Login    ${STANDARD_USER}    incorrect_password
    #login_page.Verify Error Message    Epic sadface: Username and password do not match any user in this service