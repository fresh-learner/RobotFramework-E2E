*** Settings ***
Documentation    Login Page
Library    SeleniumLibrary
Resource    ../Resource/resource.robot

*** Keywords ***
Fill the login form
    [Arguments]    ${user_name}    ${password}
    Input Text    id:username    ${user_name}
    Input Password    id:password    ${password}
    Click Button    signInBtn

wait until element is located on the page
    Wait Until Element Is Located On The Page    CSS:.my-4

