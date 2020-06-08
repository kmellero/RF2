*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${url}  http://google.com
#${browser}  chrome

*** Test Cases ***
TC to demonstrate Browser Operation Keywords in RF
    [Documentation]  TC to demonstrate Browser Operation Keywords in Robot Framework

    Open Browser  http://google.com  Chrome  alias=ChromeRCV
    Maximize Browser Window
    Open Browser  about:blank  ff  alias=RCVFF

    &{aliases}  Get Browser Aliases   #Dictionary
    Log  @{aliases}[1]
    Log  ${aliases.RCVFF}
    @{browser_ID}  Get Browser Ids  #List
    Log  @{browser_ID}[1]
    FOR  ${alias}  IN  @{aliases}
        LOG  ${alias}
    END

    Switch Browser  1
    Input Text  xpath://*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input  RCVAcademy
    Sleep  4s
    Switch Browser  @{aliases}[1]   #@{browser_ID}[1]

    Go To  http://salesforce.com

    Close All Browsers