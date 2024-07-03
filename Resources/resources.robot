*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]    ${appUrl}    ${appBrowser}
    open browser    ${appUrl}   ${appBrowser}
    maximize browser window
    ${title}    get title
    [Return]    ${title}