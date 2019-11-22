*** Settings ***
Library  SeleniumLibrary
Variables  ../../RPA-Project/Locators/HomePage_locators.py
Library  SeleniumLibrary
Library  Collections
Variables  ../../RPA-Project/Locators/HomePage_locators.py
*** Variables ***
${itemName}=  Dresses

*** Keywords ***
Search for your item
    Press keys  ${textbox_search}  ${itemName}
    Click Button  ${btn_search}

Display The Search Results
    Sleep  2 seconds
    ${count}=  Get Element Count  ${listOfItems}
    Log  ${count}
    Log To Console  ${count}
    ${xpath}=    Set Variable    //ul[@class='product_list grid row'] /li/div/div/h5/a
    ${names}=    Create List
    :FOR    ${i}    IN RANGE    1    ${count} + 1
    \    ${name}=    Get Text    xpath=(${xpath})[${i}]
#   \    Append To List    ${names}    ${name}
    \    Log To Console    ${name}



