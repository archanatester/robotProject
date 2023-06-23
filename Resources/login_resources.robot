*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://admin-demo.nopcommerce.com/

*** Keywords ***
Open my browser
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Close browsers
    close all browsers

Open login page
    Go to   ${url}

Input Username
    [Arguments]  ${username}
    input text  id:Email    ${username}

Input Password
    [Arguments]  ${password}
    input text  id:Password    ${password}

click login button
    click element   xpath://button[@class='button-1 login-button']

click logout link
    click link  Logout

Login unsuccessful Error message should be visible
    page should contain     Login was unsuccessful.

Login successful message should be visible
    page should contain     Dashboard