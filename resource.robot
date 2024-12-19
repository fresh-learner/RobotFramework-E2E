*** Settings ***
Documentation    Generic File for all the inputs and other stuff
Library    SeleniumLibrary

*** Variables ***
${user_name}        rahulshettyacademy
${password}            learning
${url}                https://rahulshettyacademy.com/loginpagePractise/

*** Keywords ***
open the browser with the url
    Create Webdriver    Chrome    chromedriver
    Maximize Browser Window
    Go To    ${url}

Close Browser Session
    Close Browser
