*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/

*** Test Cases ***
TC to demonstrate FOR LOOP Operations in RF
    [Documentation]  TC to demonstrate FOR LOOP Operations in RF
    Set Selenium Implicit Wait  5s

    Open Browser  ${url}  ${browser}
    Maximize Browser Window

    Input Text  name:q  RCV Academy
    Press Keys  xpath://*[@id="tsf"]//div[2]/ul/li  RETURN
    @{results_on_page}=  Get Webelements  xpath://*[@id="rso"]/div
    FOR  ${element}  IN  @{results_on_page}
        ${text}=  Get Text  ${element}
    END
    Close Browser