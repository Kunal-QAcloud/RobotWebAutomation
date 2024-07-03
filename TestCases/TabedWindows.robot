*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}     https://demo.automationtesting.in/Windows.html

*** Test Cases ***
Test_alerts
    open browser    ${url}     ${browser}   executable_path=/usr/bin/chromedriver
    maximize browser window

    click element    xpath://*[@id="Tabbed"]/a/button
    sleep    3
    switch window    title=Selenium
    click link    Downloads
    sleep    3