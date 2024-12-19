*** Settings ***
Documentation    Final Page
Library    SeleniumLibrary

*** Variables ***
${country_name}    India    #//a[text() = 'India']
*** Keywords ***
Enter the location in box
    [Arguments]    ${country_name}
    Input Text    id:country    ${country_name}
    Wait Until Element Is Visible            //a[text()='${country_name}']    timeout=10s
    click element       //a[text()='${country_name}']
    Sleep           2
    click element       css:.checkbox label


Purchase the Product and Confirm the Purchase
    click button    css:.btn-success
    page should contain     Success!