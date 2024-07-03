*** settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  XML

*** variables ***
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USERNAME}      Admin
${PASSWORD}      admin123

*** Test Cases ***
#LoginTest
#    Open Browser    ${url}      chrome    executable_path=/usr/bin/chromedriver
#    Sleep    15
##    Wait Until Page Contains Element    Xpath://input[@name='username']
#    Click Element    xpath://input[@name='username']
#    Input Text    xpath://input[@name='username']    ${USERNAME}
#    Input Text    xpath://input[@name='password']    ${PASSWORD}
#    Click Element   xpath://button[contains(@class, 'orangehrm-login-button')]
#    Should Contain    ${url}    dashboard
#    Sleep    2
LoginTest
    Open Browser    ${url}    chrome    executable_path=/usr/bin/chromedriver
    Wait Until Page Contains Element    xpath://input[@name='username']    timeout=10s
    Click Element    xpath://input[@name='username']
    Input Text    xpath://input[@name='username']    ${USERNAME}
    Input Text    xpath://input[@name='password']    ${PASSWORD}
    Click Element   xpath://button[@type='submit']
    Sleep    2
    Close Browser

*** keywords ***
