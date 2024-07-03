*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
LoginTest
    open browser    https://demo.nopcommerce.com    chrome  executable_path=/usr/bin/chromedriver
    maximize browser window
    click link    xpath://a[text()='Log in']
    input text    id:Email  deepak.kona815@gmail.com
    input text    id:Password   999aakash

#    capture element screenshot    xpath:/html/body/div[6]/div[1]/div[2]/div[1]/a/img    /home/kunalbakshi/Downloads/Elment.png
#    capture page screenshot    /home/kunalbakshi/Downloads/logo.png
    capture element screenshot    xpath:/html/body/div[6]/div[1]/div[2]/div[1]/a/img    Elment.png
    capture page screenshot    logo.png