*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Weblocators
    [Documentation]  This is to demonstrate WebLocators in Robot FW

    Open Browser    http:/www.ebay.com  chrome
    Maximize Browser Window
    Input Text  id:gh-ac  robot
    Click Element  name:_sacat
    Sleep  3s
#   Scroll Element Into View  xpath://a[contains(text(),'Start selling')]
#    Click Link  link:Start selling   #Sell  #https://www.ebay.com/sl/sell
 #   Click Element  xpath://a[@class='thrd'][contains(text(),'Seller Information Center')]
    Click Element  id:gdpr-banner-accept  #cookies accept banner
#    Scroll Element Into View  xpath://a[@class='thrd'][contains(text(),'Seller Information Center')]
    Click Link  partial link:Seller Inform  #if link is composed of e.g constant + dynamic parts
    Sleep  4s
    Close Browser