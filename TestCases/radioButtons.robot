*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Test_Visiblity_enability_title
    open browser    ${url}  ${browser}  executable_path=/usr/bin/chromedriver
    maximize browser window
    #setting selenium speed for every statement
    set selenium speed    2seconds

    #Radio buttons
    select radio button    sex  Male
    select radio button    sex  Female

    #Selectboxes
    select checkbox    Manual Tester
    select checkbox    Automation Tester

    #unselect checkbox
    unselect checkbox    Manual Tester

    sleep    5

*** Keywords ***