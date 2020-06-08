*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome

*** Test Cases ***
TC to demonstrate working with frame Keywords
    [Documentation]  TC to demonstrate working with frame Keywords

    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  ${browser}
    Maximize Browser Window
    Select Frame  id:iframeResult
    Current Frame Should Contain  JavaScript Alert
    Current Frame Should Not Contain  JavaScript Confirm Box Two
    Unselect Frame
    Frame Should Contain  id:iframeResult  JavaScript Alert  #w/o switching to frame, check for text
    Select Frame  id:iframeResult
    Click Element  xpath://button[contains(text(),'Try it')]  #popup msg window shows
    Sleep  3s
    Close Browser