*** Settings ***
Documentation   This doc contains test suite for valid login, run on jenkins (push code to GIT)

Resource    ../../resource/base/CommonFunctionality.resource
Test Setup  Launch browser and navigate to URL
Test Teardown   Close Browser
Test Template   Test Template for Valid Login
Library     DataDriver      file=../../test_data/open_emr_data_excel.xlsx      sheet=valid_login_data

*** Test Cases ***

Test Valid Login ${test_case_id}

*** Keywords ***
Test Template for Valid Login

    [Arguments]     ${username}     ${password}     ${language}     ${expected_title}

    Input Text    id=authUser    ${username}
    Input Password    id=clearPass    ${password}
    Select From List By Label    xpath=//select[@name='languageChoice']     ${language}
    Click Element    id=login-button
    Title Should Be    ${expected_title}
