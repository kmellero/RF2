*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/
${txtbox_username}  id:user-name
${txtbox_password}  id:password
${btn_login}  xpath://*[@id="login_button_container"]/div/form/input[3]
${txt_error}  xpath://*[@id="login_button_container"]//h3

*** Test Cases ***
Verify Login Fails - Wrong username
    Set Selenium Implicit Wait  3s
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  standard_use
    Input Text  ${txtbox_password}  secret_sauce
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login Fails - LockedOut User
    Set Selenium Implicit Wait  3s
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  locked_out_user
    Input Text  ${txtbox_password}  secret_sauce
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  Epic sadface: Sorry, this user has been locked out.
    Close Browser

Verify Login Fails - Wrong Password
    Set Selenium Implicit Wait  3s
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  standard_user
    Input Text  ${txtbox_password}  secret_sau
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login Fails - Wrong Username and Password
    Set Selenium Implicit Wait  3s
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  standard_us
    Input Text  ${txtbox_password}  secret_sau
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login Fails - Blank Username and Password
    Set Selenium Implicit Wait  3s
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  ${EMPTY}
    Input Text  ${txtbox_password}  ${EMPTY}
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  Epic sadface: Username is required
    Close Browser