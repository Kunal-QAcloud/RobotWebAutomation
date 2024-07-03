*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url1}     https://demo.automationtesting.in/Windows.html
${url2}     https://demowebshop.tricentis.com/register


*** Test Cases ***
Test_alerts
    open browser    ${url1}     ${browser}      executable_path=/usr/bin/chromedriver
    maximize browser window

    ${current_url}=  get location
    log to console    ${current_url}
    sleep    4

    go to    ${url2}
    ${current_url1}=  get location
    log to console    ${current_url1}
    sleep    4

    go back
    ${current_url2}=  get location
    log to console    ${current_url2}
    sleep    4