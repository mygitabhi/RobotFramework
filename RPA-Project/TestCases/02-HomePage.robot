*** Settings ***
Library  SeleniumLibrary
Library  ../TestData/login.py
Resource  ../Resources/Home_Keywords.robot
Resource  ../Resources/Login_Keywords.robot

Test Setup  Launch Application
Test Teardown  Close Browser Window

*** Variables ***
#${UN}=  testermail44@gmail.com
#${PWD}=  Test@2019
${sheetname}=   logindata
*** Test Cases ***

TC002-FirstTC-Search Dresses For Women
    [Tags]  Sanity
    Login Screen,Enter UN and Pwd  ${sheetname}
    Click Login
    Search for your item
    Display The Search Results

