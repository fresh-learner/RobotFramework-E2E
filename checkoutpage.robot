*** Settings ***
Documentation    Checkout Page
Library    SeleniumLibrary

*** Variables ***
${Checkout_page_load}           css:.table-hover

*** Keywords ***
Wait until Element is located in the page
    Wait Until Element Is Visible          ${Checkout_page_load}

Verify Checkout Page
    click element    css:.btn-primary
    click element    css:.btn.btn-success
    