*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://demo.nopcommerce.com

*** Test Cases ***
CheckTextBox
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    title should be     nopCommerce demo store
    click link  xpath://a[@class='ico-login']
    #Storing value
    ${"text_Check"}   set variable  id:Email

    #Check Visibity status & Enabled status(Text Element
    element should be enabled   ${"text_Check"}
    element should be visible   ${"text_Check"}

    #Provide Value
    input text  ${"text_Check"}  123123
    sleep  5
    #Clearing Value
    clear element text   ${"text_Check"}
    sleep  5
    close browser

*** Keywords ***







