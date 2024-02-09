*** Settings ***
Documentation   This doc contains test suite for valid login (push code to GIT)

Resource    ../../resource/base/CommonFunctionality.resource
Test Setup  Launch browser and navigate to URL
Test Teardown   Close Browser

*** Test Cases ***

Test Valid Login
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    xpath=//select[@name='languageChoice']     English (Indian)
    Click Element    id=login-button
    Title Should Be    OpenEMR
