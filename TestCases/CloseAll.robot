*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}     https://demo.nopcommerce.com/register
${url2}     https://demowebshop.tricentis.com/register

*** Test Cases ***
TesingBrowsers
    open browser    ${url1}     ${browser}   
    maximize browser window

    open browser    ${url2}     ${browser}  
    maximize browser window

#    close browser #This command will close the latest browser or the second browser
    close all browsers