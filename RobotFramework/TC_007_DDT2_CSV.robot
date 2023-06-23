*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/login_resources.robot
Library  DataDriver  ../TestData/LoginData_DDT.CSV


Suite Setup   Open my browser
Suite Teardown  Close browsers
Test Template  Invalid Login

*** Test Cases ***
LoginTestCSV using ${username} and ${password}

*** Keywords ***
Invalid Login
    [Arguments]  ${username}    ${password}
    Input Username  ${username}
    Input Password  ${password}
    click login button
    Login unsuccessful Error message should be visible
