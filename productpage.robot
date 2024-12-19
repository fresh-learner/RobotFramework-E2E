*** Settings ***
Documentation    Product Page
Library    SeleniumLibrary
Library    BuiltIn
Library    Collections

*** Variables ***
${product_name}    Blackberry
${Shop_page_load}           css:.nav-link
*** Keywords ***
Wait until Element is located in the page
    Wait Until Element Is Visible          ${Shop_page_load}

Verify Product Names
    ${title}=    Get Title
    Log    The title of the page is: ${title}
    @{expected_product_list}    Create List     iphone X    Samsung Note 8      Nokia Edge       Blackberry
    ${elements}    Get Webelements        css:.card-title
    @{actual_product_list}    Create List
    FOR    ${element}    IN    @{elements}
        Log    ${element.text}
        ${product_item}=    Get Text    ${element}
        Append To List    ${actual_product_list}    ${product_item}
    END
    Lists Should Be Equal    ${expected_product_list}    ${actual_product_list}    Products matched.

Select the product
    [Arguments]    ${product_name}
    ${elements}    Get Webelements    css:.card-title
    ${count}    Get Length    ${elements}
    Log    Number of elements: ${count}
    ${index}    Set Variable    1
    FOR    ${element}    IN    @{elements}
        ${product_item} =    Get Text    ${element}
#        Log    ${product_item}
        Exit For Loop If    '${product_item}' == '${product_name}'
        ${index}    Evaluate    ${index} + 1
    END
    Log    ${index}
    Click Button    xpath:(//*[@class='card-footer'])[${index}]/button
#    Click Button    css:.btn-primary
    