*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Test_Registration
    open browser    ${url}  ${browser}  executable_path=/usr/bin/chromedriver
    maximize browser window

    ${timeout}  get selenium timeout
    log to console    ${timeout}

    set selenium timeout    10 seconds

    wait until page contains    Registeration      #5sec_Bydefault
    select radio button    Gender   M
    input text    id:FirstName  Raghav
    input text    id:LastName  pal
    input text    id:Email  raghav@yopmail.com
    input text    id:Password  12345678
    input text    id:ConfirmPassword  12345678