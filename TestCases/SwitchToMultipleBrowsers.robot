*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url1}     https://demo.automationtesting.in/Windows.html
${url2}     https://demowebshop.tricentis.com/register


*** Test Cases ***
Test_alerts
    open browser    ${url1}     ${browser}  executable_path=/usr/bin/chromedriver
    maximize browser window

    open browser    ${url2}     ${browser}  executable_path=/usr/bin/chromedriver
    maximize browser window
    sleep    3

    switch browser    1
    ${title1}   get title
    log to console    ${title1}
    sleep    2

    switch browser    2
    ${title2}   get title
    log to console    ${title2}
    sleep    2

    log to console    ${title1}
    log to console    ${title1}
    log to console    ${title1}
    sleep    4
    log to console    ${title2}
    log to console    ${title2}
    log to console    ${title2}