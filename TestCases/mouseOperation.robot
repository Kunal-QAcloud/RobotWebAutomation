*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
LoginTest
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome     executable_path=/usr/bin/chromedriver
    maximize browser window
    open context menu    xpath:/html/body/div/section/div/div/div/p/span
    sleep    5

    go to    https://testautomationpractice.blogspot.com/
    double click element    xpath://*[@id="HTML10"]/div[1]/button
    sleep    5

#    go to    http://www.dhtmlgoodies.com/submitted-scripts/i-google-like-drag-drop/index.html
#    drag and drop    id:block-2     id:column-2
#    sleep    5

    go to    https://testautomationpractice.blogspot.com/
    drag and drop    id:draggable     id:droppable
    sleep    5

    close all browsers