*** Settings ***
Documentation   This doc contains test suite for invalid login (push code to GIT)

Resource    ../../resource/base/CommonFunctionality.resource
Test Setup  Launch browser and navigate to URL
Test Teardown   Close Browser

*** Test Cases ***

Test Invalid Login
    Input Text    id=authUser    john
    Input Password    id=clearPass    wick
    Select From List By Label    xpath=//select[@name='languageChoice']     English (Indian)
    Click Element    id=login-button
    Element Text Should Be    xpath=//p[text()='Invalid username or password']    Invalid username or password
