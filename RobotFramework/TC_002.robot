*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://demo.nopcommerce.com/login

*** Test Cases ***
Login_TC_001
    Open Browser  ${url}  ${browser}
    LoginIntoApplication
    close browser

*** Keywords ***
LoginIntoApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email    archana.surendra@gmail.com
    input text  id:Password     archana123
    click element  //button[@type='submit']
    sleep   5





