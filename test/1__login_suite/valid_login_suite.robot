*** Settings ***
Documentation   This doc contains test suite for valid login (push code to GIT)

Resource    ../../resource/base/CommonFunctionality.resource
Test Setup  Launch browser and navigate to URL
Test Teardown   Close Browser
Test Template   Test Template for Valid Login

*** Test Cases ***

Test Valid Login 1
    admin       pass    English (Indian)    OpenEMR
Test Valid Login 2
    admin       pass    Danish    OpenEMR
Test Valid Login 3
    receptionist       receptionist    English (Indian)    OpenEMR
Test Valid Login 4
    accountant       accountant    English (Indian)    OpenEMR

*** Keywords ***
Test Template for Valid Login

    [Arguments]     ${username}     ${password}     ${language}     ${expected_title}

    Input Text    id=authUser    ${username}
    Input Password    id=clearPass    ${password}
    Select From List By Label    xpath=//select[@name='languageChoice']     ${language}
    Click Element    id=login-button
    Title Should Be    ${expected_title}