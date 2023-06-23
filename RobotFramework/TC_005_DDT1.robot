*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/login_resources.robot
# open and close only 1 time
Suite Setup  Open my browser
Suite Teardown  Close browsers
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup     Open my browser
Suite Teardown   Close browsers
Test Template   Invalid Login
*** Test Cases ***      username                password
TC_001                  admin@yourstore.com     ${Empty}
TC_002                  admin@yourstore.com     abc
TC_003                  admin@yourstore.com     123
TC_004                  123                     admin
TC_005                  abc                     admin
TC_006                  ${Empty}                admin

*** Keywords ***
Invalid Login
    [Arguments]  ${username}    ${password}
    Input Username  ${username}
    Input Password  ${password}
    click login button
    Login unsuccessful Error message should be visible

