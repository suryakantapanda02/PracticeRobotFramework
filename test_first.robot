*** Settings ***
Documentation    To validate the login page
Library    SeleniumLibrary

*** Test Cases ***
Validate UnSuccessful Login
    open the browser with the perfect url
    Check the menu buttons
    Come back to starting url
    fill the login form
    Log out


*** Keywords ***

open the browser with the perfect url
    Create Webdriver    Chrome
    Go To    https://practicetestautomation.com/practice-test-login/

Check the menu buttons
    Click Element    menu-item-43
    Click Element    menu-item-20
    Click Element    menu-item-21
    Click Element    menu-item-19
    Click Element    menu-item-18

Come back to starting url

    Go To    https://practicetestautomation.com/practice-test-login/


fill the login form

    Input Text    Id:username    student
    Input Password    password    Password123
    Click Button    id:submit

Log out
    Click Link    Log out

    

*** Variables ***





