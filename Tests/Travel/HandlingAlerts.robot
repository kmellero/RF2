*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
${url2}  https://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm
${url3}  https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
${url4}  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert2
${url5}  https://www.sugarcrm.com/au/request-demo/
${Btn}  xpath://body/button

*** Test Cases ***
TC to demonstrate working with Alert Keywords
    [Documentation]  TC to demonstrate working with Alert Keywords

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Select Frame  id:iframeResult
    Current Frame Should Contain  JavaScript Alert
    Click Button  xpath://button[contains(text(),'Try it')]
    Sleep  2s
    Handle Alert  timeout=5 s

    Go To  ${url}
    Select Frame  id:iframeResult
    Click Button  ${Btn}  #xpath://button[contains(text(),'Try it')]
    Sleep  2s
    ${msg}=  Handle Alert  ACCEPT  timeout=2s

    Go To  ${url2}
    Select Frame  id:iframeResult
    Click Button  ${Btn}  #xpath://button[contains(text(),'Try it')]
    Sleep  2s
    ${msg2}=  Handle Alert  DISMISS  2s

    Go To  ${url3}
    Select Frame  id:iframeResult
    Click Button  ${Btn}  #xpath://button[contains(text(),'Try it')]
    Sleep  2s
    Input Text Into Alert  This is crazy  ACCEPT  timeout=2s

    Go To  ${url4}
    Select Frame  id:iframeResult
    Click Button  ${Btn}  #xpath://button[contains(text(),'Try it')]
    Sleep  2s
    Alert Should Be Present  text=Hello How are you?  action=ACCEPT

    Go To  ${url5}
    Sleep  2s
    Alert Should Not Be Present  action=ACCEPT  timeout=2s
    Close Browser
