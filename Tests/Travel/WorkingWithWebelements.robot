*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demonstrate WebElement Operation Keywords
    [Documentation]  Test Case to demonstrate WebElement Operation Keywords

    Open Browser  http://google.com  Chrome  alias=ChromeRCV
    Maximize Browser Window
    Sleep  4s

    ${attr}=  Get Element Attribute  xpath://*[@id="tsf"]//div[3]/center/input[1]  class
    ${count}=  Get Element Count  xpath://*[@id="tsf"]//div[3]/center/input[1]
    ${width}  ${height}  Get Element Size  xpath://*[@id="tsf"]//div[3]/center/input[1]
    Get WebElement  xpath://*[@id="tsf"]//div[3]/center/input[1]
    @{webelements}=  Get WebElements  xpath://*[@id="tsf"]//div[3]/center/input[1]
    Capture Element Screenshot  xpath://input[@name='q']
    Assign Id To Element  name:btnK  RCVid
    Page Should Contain Element  RCVid
    Element Should Be Focused  xpath://input[@name='q']
    Element Should Be Visible  xpath://input[@name='q']

    Input Text  xpath://input[@name='q']  RCVAcademy
    Clear Element Text  xpath://input[@name='q']
    Cover Element  xpath://*[@id="tsf"]/div[2]//div[1]//div[3]/center/input[2]
    Sleep  2s
    Element Attribute Value Should Be  name:btnK  value  Sök på Google
    Element Should Be Enabled  name:btnK
    Element Should Not Be Visible  name:btnKgf
    Element Should Contain  xpath://*[@id="fsl"]/a[4]  Så fungerar
    Element Should Not Contain  xpath://*[@id="fsl"]/a[4]  Sök på Google
    Element Text Should Be  xpath://*[@id="fsl"]/a[4]  Så fungerar Sök
    Element Text Should Not Be  xpath://*[@id="fsl"]/a[4]  Så fungerar
    Double Click Element  xpath://*[@id="gb_70"]    #Login box, must not be logged in to have it visible
    Click Element At Coordinates  xpath://*[@id="identifierNext"]/div[2]  15  10  #Nästa on the login page; xoffset pixel-> right, yoffset upp
    #Element Should Be Disabled  name:btnK
    Sleep  3s
    Close Browser
