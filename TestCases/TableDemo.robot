*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Table Validations
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window

    ${rows}     get element count    xpath://table[@name='BookTable']/tbody/tr
    ${cols}     get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th

    log to console    ${rows}
    log to console    ${cols}

    ${data}     Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${data}

    table column should contain    xpath://table[@name='BookTable']     2   Author
    table row should contain    xpath://table[@name='BookTable']    4   300
    table column should contain    xpath://table[@name='BookTable']    1   Learn JS
    table row should contain    xpath://table[@name='BookTable']    4   Learn JS
    table cell should contain    xpath://table[@name='BookTable']    5  2   Mukesh

    table header should contain    xpath://table[@name='BookTable']    BookName



