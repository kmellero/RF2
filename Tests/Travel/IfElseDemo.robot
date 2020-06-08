*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/

*** Test Cases ***
TC to demonstrate If/Else Operations in RF
    [Documentation]  TC to demonstrate If/Else Operations in RF

    Open Browser  ${url}  ${browser}
    Maximize Browser Window

    Input Text  id:user-name  standard_user
    Input Text  id:password  secret_sauce
    Click Button  xpath://*[@id="login_button_container"]/div/form/input[3]

    ${items_on_page}=  Get Element Count  xpath://*[@class="inventory_list"]/div

    Run Keyword If  ${items_on_page} == 10  Test Keyword 1
    ...  ELSE IF  ${items_on_page} < 10 and ${items_on_page} >6  Test Keyword 2
    ...  ELSE  Test Keyword 3

*** Keywords ***
Test Keyword 1
    Log To Console  Executed Keyword 1 - Found Items as expected
    Close Browser

Test Keyword 2
    Log To Console  Executed Keyword 2 - Found Items less than expected
    Close Browser

Test Keyword 3
    Log To Console  Executed Keyword 3 - Exception
    Close Browser