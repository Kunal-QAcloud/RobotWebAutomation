*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
LoginTest
    open browser    https://worldometers.info/geography/flags-of-the-world/    chrome
    maximize browser window
#    execute javascript    window.scrollTo(0,1500)

#    scroll element into view    xpath://div[text()='Denmark']

    sleep    4
    #zero is representing the horizontal scrolling and 1500 is representing the vertical scrolling
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    5
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)


    sleep    6