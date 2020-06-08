*** Settings ***
Library  SeleniumLibrary
Variables  ../Webelements.py

*** Variables ***
#in Webelements.py
#${search_text}  robot

#list of values for variables
#@{search_text}  mobile  robot  books  travel
#${THIS_IS_GLOBAL_VAR}  blahblahblah
#Dictionary of key=value variables
#&{search_text}  abc=mobile  bcd=books   #referred to a value with ${search_text.abc}

#${HeaderPageSearchTextBox}  xpath://*[@id="gh-ac"]
#${HeaderPageSearchButton}  xpath://*[@id="gh-btn"]
#${HeaderPageAdvancedSearchLink}  xpath://a[@id='gh-as-a']
#${HeaderPageAdvancedSearchTextBox}  xpath://input[@id='_nkw']
#${HeaderPageAdvancedSearchButton}  xpath://div[@class='adv-s mb space-top']//button[@class='btn btn-prim'][contains(text(),'Search')]

*** Keywords ***
Input search text and click Search
    [Arguments]  ${search_text}
    Input Text  ${HeaderPageSearchTextBox}  ${search_text}
#   Input Text  xpath://*[@id="gh-ac"]  ${search_text.abc}  #@{search_text}[0]  #${search_text}
    Press Keys  ${HeaderPageSearchButton}  [Return]

Click on Advanced Search Link
    [Arguments]  ${search_text}
    Click Element  ${HeaderPageAdvancedSearchLink}
    Sleep  5s
    Page Should Contain  Advanced Search
    Input Text  ${HeaderPageAdvancedSearchTextBox}  ${search_text}
#    Input Text  xpath://input[@id='_nkw']  ${search_text.abc}  #@{search_text}[0]  #${search_text}
    Press Keys  ${HeaderPageAdvancedSearchButton}  [Return]

