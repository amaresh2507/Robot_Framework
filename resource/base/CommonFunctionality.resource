*** Settings ***
Documentation   This doc contains config info
Library     SeleniumLibrary

*** Variables ***
${BROWSER}  googlechrome
${URL}  http://demo.openemr.io/b/openemr/

*** Keywords ***
Launch browser and navigate to URL
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go To    url=${URL}