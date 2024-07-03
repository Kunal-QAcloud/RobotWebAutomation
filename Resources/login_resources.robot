*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/login?returnUrl=%2F
${browser}      chrome

*** Keywords ***
Open my browser
    open browser    ${url}      ${browser}
    Maximize Browser Window

Close browsers
    close all browsers

Open Login Page
    go to    ${url}

Enter Email
    [Arguments]    ${email}
    input text    xpath://input[@class='email']  ${email}

Enter Password
    [Arguments]    ${Password}
    input text    xpath://input[@class='password']  ${Password}

Click Login Button
    click element    xpath://button[text()='Log in']

Click Logout Button
    click element    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
#    Click Link    Logout

Error Message should be visible
    page should contain    Login was unsuccessful

Dashboard should be visible
    page should contain    Dashboard


