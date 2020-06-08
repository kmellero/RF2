*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
#${url}  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
${url}  https://www.sugarcrm.com/au/request-demo/
${url2}  https://demoqa.com/droppable/

*** Test Cases ***
TC to demonstrate Mouse Operations in RF
    [Documentation]  TC to demonstrate Mouse Operations in RF

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Scroll Element Into View  xpath://*[@id='interest_market_c0']
    Mouse Down  xpath://*[@id="field25"]/div/input
    Sleep  2s
    Mouse Up  xpath://*[@id="field25"]/div/input
    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a
    Sleep  4s
    Mouse Down On Link  xpath://*[@id="menu-item-107"]/a
    Sleep  4s
    Mouse Over  xpath://*[@id="menu-item-19419"]/a
    Sleep  4s
    Mouse Out  xpath://*[@id="menu-item-19419"]/a
    Sleep  4s
    Mouse Down On Image  xpath://footer//div[1]/a/img
    Sleep  4s

    #Drag and drop example
    Go To  ${url2}
    Drag And Drop  xpath://*[@id="draggable"]/p  xpath://*[@id="droppable"]
    Sleep  4s

    #Right Click on element
    Open Context Menu  xpath://*[@id="sidebar"]/aside[2]/ul/li[2]/a
    Sleep  2s

    #Close Browser

