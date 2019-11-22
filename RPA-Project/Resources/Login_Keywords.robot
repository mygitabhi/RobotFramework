*** Settings ***
Library  SeleniumLibrary
Variables  ../../RPA-Project/Locators/LoginPage_locators.py
Library  ../../RPA-Project/TestData/login.py

*** Variables ***
${URL}  http://automationpractice.com/index.php
${Browser}  Chrome

*** Keywords ***
Launch Application
    [Documentation]  Keywords for launching app
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
Login Screen,Enter UN and Pwd
    [Documentation]  Keywords to pick un and pwd
    Click Link  ${link_login}
    [Arguments]  ${sheetname}
    ${un}=  fetchUsername   ${sheetname}
    ${pwd}=  fetchPwd   ${sheetname}
    Input Text  ${txt_UN}  ${un}
    Input Text  ${txt_Pwd}  ${pwd}
Click Login
    [Documentation]  Click on Login
    Click Button  ${btn_Submit}
Validate Homepage
    [Documentation]  Vaalidate Homepage
    ${title}=  Get Title
    Title Should Be  ${title}
LogOut From Application
    [Documentation]  Keyword to log out from app
    Click Link  ${link_logout}
Close Browser Window
    [Documentation]  Keywords to close browser
    Close Browser