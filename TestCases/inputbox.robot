*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}      ${browser}      executable_path=/usr/bin/chromedriver
    Maximize Browser Window
    Sleep    5
    Title Should Be    OrangeHRM
    ${"username"}   Set Variable    xpath://input[@name='username']    
    Element Should Be Visible    ${"username"}
    Element Should Be Enabled    ${"username"}
    Input Text    ${"username"}    Admin
    Sleep    3
    Clear Element Text    ${"username"}
    Sleep    3
    Close Browser

*** Keywords ***