*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]    ${appUrl}    ${appBrowser}
    open browser    ${appUrl}   ${appBrowser}   executable_path=/usr/bin/chromedriver
    maximize browser window
    ${title}    get title
    [Return]    ${title}