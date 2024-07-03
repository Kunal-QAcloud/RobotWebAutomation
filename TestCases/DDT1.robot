*** Settings ***
Library       SeleniumLibrary
Resource        /home/kunalbakshi/firstTestcase/Automation/Resources/login_resources.robot
#Resource    ../Resources/login_resources.robot
#suite setup will execute only once before actual TC is started..
Suite Setup     Open my browser
Suite Teardown    Close browsers
#suite Teardown will execute only once after completion of TC..
Task Template   Invalid Login

#*** Test Cases ***      Email       Password
#Right email wrong password      criloifoufoubrei-6480@yopmail.com       ${EMPTY}

*** Test Cases ***
REEP    criloifoufoubrei-6480@yopmail.com   ${EMPTY}
WERP    criloifoufoubrei-6480@yopmail.com   12345678
REWP    crileoifoufouwbrei-6480@yopmail.com   1234w57

*** Keywords ***
Invalid Login
    [Arguments]    ${email}    ${password}
    Open Login Page
    Enter Email     ${email}
    Enter Password     ${password}
    Click Login Button
    Error Message should be visible