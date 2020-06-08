*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#command>robot -d Results -v env:qa Tests/eBay/Verify_search_functionality.robot
${env}  dev  #will not work-it is preceded by -v env:qa at the command line
&{url}  qa=http://www.ebay.com  dev=www.dev.ebay.com  #some other test environment
${browser}  chrome

*** Keywords ***
Start testCase
    Open Browser  ${url.${env}}  ${browser}  #${url.qa}  chrome
    Maximize Browser Window

Finish testCase
    Close Browser
