*** Settings ***
Library  SeleniumLibrary  timeout=10s    #set globally

*** Variables ***
${browser}  chrome
${url}  https://www.sugarcrm.com/au/request-demo/

*** Test Cases ***
TC to demonstrate Speed and Timeout Operations in RF
    [Documentation]  TC to demonstrate Speed and Timeout Operations in RF
    ${default_selenium_timeout}=  Get Selenium Timeout
    ${default_selenium_speed}=  Get Selenium Speed
    Set Selenium Timeout  7s   #for this TC
    Set Selenium Speed  1s   #waits after each command, debugging purposes

    Open Browser  ${url}  ${browser}
#    Alert Should Be Present     #to show timeout
    Maximize Browser Window
    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a  #xpath://*[@id='interest_market_c0']
    Mouse Down  xpath://*[@id="field25"]/div/input

    Mouse Up  xpath://*[@id="field25"]/div/input
    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a

    Mouse Down On Link  xpath://*[@id="menu-item-107"]/a

    ${default_selenium_timeout}=  Get Selenium Timeout
    ${default_selenium_speed}=  Get Selenium Speed

    Close Browser
