*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
LoginTest
    open browser    https://demo.nopcommerce.com/login?returnUrl=%2F    chrome      executable_path=/usr/bin/chromedriver
    maximize browser window

    ${link_count}    get element count    xpath://a
    log to console    ${link_count}

    FOR    ${i}     IN RANGE    1   ${link_count}+1
    ${link_text}    get text    xpath:(//a)[${i}]
    log to console    ${link_text}
    END

