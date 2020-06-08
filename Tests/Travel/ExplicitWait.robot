*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.sugarcrm.com/au/request-demo/

*** Test Cases ***
TC to demonstrate Explicit Waits Operations in RF
    [Documentation]  TC to demonstrate Explicit Waits Operations in RF

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a  #xpath://*[@id='interest_market_c0']

    Wait Until Page Contains  With our customers
    Wait Until Page Contains Element  xpath://*[@id="menu-item-19419"]/a
    Wait Until Page Does Not Contain  With our customersseee
    Wait Until Page Does Not Contain Element  xpath://*[@id="menu-item-19419"]/asbbk

    Wait Until Location Is  ${url}
    Wait Until Location Is Not  ${url}/l
    Wait Until Location Contains  au
    Wait Until Location Does Not Contain  aud

    Wait Until Element Contains  xpath://*[@id="menu-item-19419"]/a  Deployment Options  timeout=10s  error=Found Text
    Wait Until Element Does Not Contain  xpath://*[@id="menu-item-16789"]/a  random text
    Wait Until Element Is Enabled  xpath://*[@id="menu-item-19419"]/a
    Wait Until Element Is Not Visible  xpath://*[@id="menu-item-19419"]/a/bc
    Wait Until Element Is Visible  xpath://*[@id="menu-item-19419"]/a

    Close Browser
