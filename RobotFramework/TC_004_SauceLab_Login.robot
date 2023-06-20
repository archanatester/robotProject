*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://www.saucedemo.com/

*** Test Cases ***
CheckTextBox
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    title should be     Swag Labs
    input text  xpath://input[@id='user-name']  standard_user
     sleep  3
    input text  xpath://input[@id='password']  secret_sauce
     sleep  3
    click element   xpath://input[@name ='login-button']
    sleep  5
    title should be     Swag Labs

    click element   xpath://button[@id='add-to-cart-sauce-labs-backpack']
    sleep  3
    #title should be     Swag Labs

    click element   xpath://span[@class='shopping_cart_badge']
     sleep  3
     title should be     Swag Labs

     click element   xpath://button[@id='checkout']
     sleep  3

     input text  id:first-name    Abc
     input text  id:last-name     ef
     input text  id:postal-code     56001
     sleep  3
     click element  id:continue
     sleep  2

      click element  id:finish
     sleep  2
     ${"text_Check"}   set variable  xpath://span[@class='title']
    #Check Visibity status & Enabled status(Text Element
    element should be enabled   ${"text_Check"}
    element should be visible   ${"text_Check"}

*** Keywords ***







