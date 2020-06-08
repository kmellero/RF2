*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify search results
    Input Text  //*[@id="gh-ac"]  mobile
    Press Keys  //*[@id="gh-btn"]  [Return]
    Page Should Contain  results for mobile

Filter results by condition
    Mouse Over  //span[@class='expand-btn__cell']//span[contains(text(),'Condition')]    #//*[@id="w24-button-w0"]
    Click element  //span[@class='expand-btn__cell']//span[contains(text(),'Condition')]      #//*[@id="w24-button-w0"]
    Click element  //*[@id="s0-13-11-5-1[0]-75[1]-14-content-menu"]/a[2]/span[1]/span   #//*[@id="s0-13-11-5-1[0]-75[1]-14-content"]//a[2]//span[contains(text(),'New')]    #//*[@id="w24-content-0[1]"]
    Sleep  15s

Verify filter results
    Element Should Contain  //li[@class='carousel__snap-point srp-carousel-list__item--large-items srp-multi-aspect__item--applied']//a[@class='srp-carousel-list__item-link--truncated-small-item']  New

