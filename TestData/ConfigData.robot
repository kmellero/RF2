*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#Configuration data
${browser}  chrome
${url}  https://www.saucedemo.com/

#Locators
${txtbox_username}  id:user-name
${txtbox_password}  id:password
${btn_login}  xpath://*[@id="login_button_container"]/div/form/input[3]
${txt_error}  xpath://*[@id="login_button_container"]//h3