*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Login_Keywords.robot

Documentation  This Test Suite is related to TC_01
Suite Setup  Launch Application
Suite Teardown  Close Browser Window
#Test Setup  Launch Application
#Test Teardown  Close Browser Window

*** Variables ***
${sheetname}=   logindata

*** Test Cases ***
TC001-FirstTC-Login Into Application
    [Documentation]  Logging into Application
    Login Screen,Enter UN and Pwd  ${sheetname}
    Click Login
    Validate Homepage
   #LogOut From Application

