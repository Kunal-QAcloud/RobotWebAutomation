*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
Test_alerts
    open browser    ${url}     ${browser}
    maximize browser window

    click element    xpath://*[@id="HTML9"]/div[1]/button[1]

    handle alert    accept
#    handle alert    dismiss
#    handle alert    leave
#    alert should be present    I am an alert box!
    alert should not be present    I am an alert box!