*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Test_Registration


    open browser    ${url}  ${browser}
    maximize browser window

    ${implicitwait}     get selenium implicit wait
    log to console    ${implicitwait}

    set selenium implicit wait    10 seconds

    ${implicitwait}     get selenium implicit wait
    log to console    ${implicitwait}

    select radio button    Gender   M
    input text    id:FirstName  Raghav
    input text    id:LastName  pal
    input text    id:Email  raghav@yopmail.com
    input text    id:Password  12345678
    input text    id:ConfirmPassword  12345678