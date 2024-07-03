*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://javadoc.io/static/org.seleniumhq.selenium/selenium-api/2.50.1/index.html?org/openqa/selenium/SearchContext.html

*** Test Cases ***
Test_alerts
    open browser    ${url}     ${browser}   executable_path=/usr/bin/chromedriver
    maximize browser window

    select frame    packageListFrame   #id name xpath
    click link    org.openqa.selenium
    unselect frame
    sleep    3

    select frame    packageFrame
    click link    By.ByClassName
    unselect frame
    sleep    3


    select frame    classFrame
    click link    Tree
    unselect frame
    sleep    3


    CLOSE ALL BROWSERS