*** Settings ***
Library  SeleniumLibrary
Resource  ../TestData/ConfigData.robot

#*** Variables ***  In ConfigData.robot
#${browser}  chrome
#${url}  https://www.saucedemo.com/
#${txtbox_username}  id:user-name
#${txtbox_password}  id:password
#${btn_login}  xpath://*[@id="login_button_container"]/div/form/input[3]
#${txt_error}  xpath://*[@id="login_button_container"]//h3

*** Keywords ***
Start TestCase
    Set Selenium Implicit Wait  3s
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Finish TestCase
    Close Browser