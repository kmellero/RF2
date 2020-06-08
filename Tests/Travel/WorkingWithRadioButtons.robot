*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${locator}  xpath://button[@class='optanon-allow-all accept-cookies-button']


*** Test Cases ***
TC to demonstrate Radio buttons operation Keywords
    [Documentation]  TC to demonstrate Radio buttons operation Keywords

    Open Browser  https://www.sugarcrm.com/au/request-demo/  Chrome
    Maximize Browser Window
    Sleep  4s
    Page Should Contain Radio Button  xpath://input[@id='doi0']
    Page Should Not Contain Radio Button  xpath://input[@id='doi00']
    Radio Button Should Not Be Selected  doi
 #   ${locator} = xpath://button[@class='optanon-allow-all accept-cookies-button']
    ${c}=  Get Element Count  ${locator}  #all in- & visible in DOM
    Run Keyword If   ${c}>0  Click Element  ${locator}
    Scroll Element Into View  xpath://input[@id='doi0']
    Select Radio Button  doi  0
    Radio Button Should Be Set To  doi  0
#    Radio Button Should Not Be Selected  # FAILs for doi  group doi has doi0 selected

    Sleep  2s
    Close Browser