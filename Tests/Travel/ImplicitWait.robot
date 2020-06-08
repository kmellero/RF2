*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.sugarcrm.com/au/request-demo/

*** Test Cases ***
TC to demonstrate Implicit Waits Operations in RF
    [Documentation]  TC to demonstrate Implicit Waits Operations in RF

    ${default_implicit_wait}=  Get Selenium Implicit Wait
    Set Selenium Implicit Wait  11s
    ${custom_implicit_wait}=  Get Selenium Implicit Wait

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a  #xpath://*[@id='interest_market_c0']
    Mouse Down  xpath://*[@id="field25"]/div/input

    Mouse Up  xpath://*[@id="field25"]/div/input/ddddd  #to fail

    Close Browser
