*** Settings ***
Documentation    E2E Run
Library    SeleniumLibrary
Library     Collections
Test Setup      open the browser with the url
Suite Setup
Suite Teardown
Test Teardown   Close Browser session
Resource        ../Resource/resource.robot
Resource        ../page_objects/login.robot
Resource        ../page_objects/productpage.robot
Resource        ../page_objects/checkoutpage.robot
Resource        ../page_objects/finalPage.robot



*** Test Cases ***
End to end ecommerce Product validation
    [Tags]      REGRESSION
    login.Fill the login Form     ${user_name}    ${password}
    productpage.wait until Element is located in the page
    productpage.Verify Product Names
    productpage.Select the product    ${product_name}
    #add items to cart and checkout      ${listofProducts}
    checkoutpage.Verify Checkout Page
    finalPage.Enter the location in box      ${country_name}
    finalPage.Purchase the Product and Confirm the Purchase



#Select the Form and navigate to Child window
#    login.Fill the Login Details and Login Form