*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}  https://www.sugarcrm.com/au/request-demo/
${url2}  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
*** Test Cases ***
TC to demonstrate List Operation Keywords
    [Documentation]  TC to demonstrate List Operations Keywords

    Open Browser  ${url1}  ${browser}
    Maximize Browser Window
    Sleep  2s
    Scroll Element Into View  xpath://*[@id='field1']/div/input
    Page Should Contain List  xpath://div[@id='field27']/div/select[@name='employees_c']
    Page Should Not Contain List  xpath://div[@id='field27']/div/select[@name='employees_']
    @{AllItems}=  Get List Items  xpath://div[@id='field27']/div/select[@name='employees_c']
    ${ListLabel}=  Get Selected List Label  xpath://div[@id='field27']/div/select[@name='employees_c']
    ${ListValue}=  Get Selected List Value  xpath://div[@id='field27']/div/select[@name='employees_c']

    List Selection Should Be  xpath://div[@id='field27']/div/select[@name='employees_c']  Company Size*
    Select From List By Index  xpath://div[@id='field27']/div/select[@name='employees_c']  1
    ${Label1}=  Get Selected List Label  xpath://div[@id='field27']/div/select[@name='employees_c']
    Sleep  2s
    Select From List By Label  xpath://div[@id='field27']/div/select[@name='employees_c']  51 – 100 employees
    ${Label2}=  Get Selected List Label  xpath://div[@id='field27']/div/select[@name='employees_c']
    Sleep  2s
    Select From List By Value  xpath://div[@id='field27']/div/select[@name='employees_c']  level5
    ${Label3}=  Get Selected List Label  xpath://div[@id='field27']/div/select[@name='employees_c']
    Sleep  2s

 #  Multiselect lists
    Go to  ${url2}    #https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
    Select Frame  id:iframeResult
    Select All From List  xpath://select[@id='cars']
    Sleep  2s
    @{ListLabels}=  Get Selected List Labels  xpath://select[@id='cars']
    Sleep  2s
    Unselect From List By Value  xpath://select[@id='cars']  audi
    Sleep  2s
    Unselect From List By Index  xpath://select[@id='cars']  1
    Sleep  2s
    Unselect From List By Label  xpath://select[@id='cars']  Volvo
    @{ListValues}=  Get Selected List Values  xpath://select[@id='cars']
    Sleep  2s
    Unselect All From List  xpath://select[@id='cars']
    Sleep  2s
    List Should Have No Selections  xpath://select[@id='cars']
    Close Browser


