*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{BROWSER}  Chrome  ff

*** Test Cases ***
#TC to demonstrate Browser Window Operation Keywords in Robot Framework
#    [Documentation]  TC to demonstrate Browser Window Keywords in RF
#
#    Open Browser  http://salesforce.com  @{BROWSER}[0]  alias=ChromeRCV
#    Click element  xpath://button[@id='onetrust-accept-btn-handler']
#    Maximize Browser Window
#    Sleep  4s
#    Wait Until Element Is Visible  xpath://*[@id="_content_www_sv_se_home_jcr_content_main-par_columncontainer_3b6d"]/div/div/div[6]/div[1]/div[1]/div[3]/div/div[2]/div/div/div/div[1]/div/a
#    Click Link  //*[@id="_content_www_sv_se_home_jcr_content_main-par_columncontainer_3b6d"]/div/div/div[6]/div[1]/div[1]/div[3]/div/div[2]/div/div/div/div[1]/div/a
#
#    @{WindowHandles}=  Get Window Handles
#    Sleep  4s
#    @{WindowIdentifier}=  Get Window Identifiers
#    Sleep  4s
#    @{WindowNames}=  Get Window Names
#    Sleep  4s
#    @{WindowTitle}=  Get Window Titles
#    Sleep  4s
#    Set Window Position  100  200
#    ${x}  ${y}  Get Window Position
#    Log  ${x}
#    Log  ${y}
#    Sleep  4s
#    Set Window Size     800  600
#    ${width}  ${height}=  Get Window Size
#    Sleep  4s
#    Switch Window  @{WindowHandles}[1]
#    Log  @{WindowHandles}[1]
#    Sleep  4s
#    Close Window
#    Sleep  4s
#    Switch Window  @{WindowHandles}[0]
#    Sleep  4s
#    Close Window

To demonstrate further Window Keywords for different browsers
    [Documentation]  TC to further illustrate use of Window Keywords in RF


    Open Browser  https://robotframework.org  @{BROWSER}[0]  alias=BrowserA	# BrowserA with first window is opened.
    Execute Javascript  window.open()			# In BrowserA second window is opened.
    Switch Window  locator=NEW			# Switched to second window in BrowserA
    Go To  https://robocon.io			# Second window navigates to robocon site.
    Execute Javascript  window.open()			# In BrowserA third window is opened.
    ${handle}  Switch Window  locator=NEW		# Switched to second window in BrowserA
    Go To  https://github.com/robotframework/			# Third windows goes to robot framework github site.
    Execute Javascript  window.open()       # In BrowserA 4th window opens

    Log  ${handle}
    @{WindowHandles}=  Get Window Handles
    Log  @{WindowHandles}[0] " - " @{WindowHandles}[1] " - " @{WindowHandles}[2]
    Open Browser  https://github.com  @{BROWSER}[1]  alias=BrowserB	# BrowserB with first windows is opened.
    ${location}  Get Location			# ${location} is: https://www.github.com
    Log  ${handle}
    Switch Window  ${handle}  browser=BrowserA		# BrowserA second windows is selected.
    ${location}  Get Location			# ${location} = https://robocon.io/
    @{locations 1}  Get Locations			# By default, lists locations under the currectly active browser (BrowserA).
    @{locations 2}  Get Locations  browser=ALL		# By using browser=ALL argument keyword list all locations from all browsers.

    Close Browser
