*** Settings ***
Library     SeleniumLibrary
#Resource    ../Resources/resources.robot
Resource    /home/kunalbakshi/firstTestcase/Automation/Resources/resources.robot

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com

*** Test Cases ***
Test_Arguments_Returns
    ${page_title}   launchBrowser    ${url}  ${browser}
    log to console    ${page_title}
    log   ${page_title}
    click link    xpath://a[text()='Log in']
    title should be    nopCommerce demo store. Login

#    creating and storing element
    ${"email_element"}  set variable    id:Email
    sleep    5

    input text    ${"email_element"}    abcdefghij
    clear element text    ${"email_element"}

    close browser

#*** Keywords ***
#launchBrowser
#    [Arguments]    ${appUrl}    ${appBrowser}
#    open browser    ${appUrl}   ${appBrowser}   executable_path=/usr/bin/chromedriver
#    maximize browser window
#    ${title}    get title
#    [Return]    ${title}