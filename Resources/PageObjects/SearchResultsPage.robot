*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot
Library  SeleniumLibrary
Variables  ../Webelements.py

*** Variables ***
#in Webelements.py
#${SearchRPagesearch_result}  results for
#${SearchRPageConditionDropDown}  //span[@class='expand-btn__cell']//span[contains(text(),'Condition')]
#${SearchRPageConditionNew}  //*[@id="s0-13-11-5-1[0]-75[1]-14-content-menu"]/a[2]/span[1]/span
#${SearchRPageLinkNew}  //li[@class='carousel__snap-point srp-carousel-list__item--large-items srp-multi-aspect__item--applied']//a[@class='srp-carousel-list__item-link--truncated-small-item']
#
#${SearchRPageDeliveryDropDown}  //span[contains(text(),'Delivery Options')]
#${SearchRPageDeliveryFreeInternationalShipping}  //span[contains(text(),'Free International Shipping')]
#${SearchRPageLinkFreeShipping}  xpath://div[contains(text(),'Free shipping')]


*** Keywords ***
Verify Search Results
    [Arguments]  ${search_text}
#    Page Should Contain  ${search_result} ${search_text.abc}  #@{search_text}[0]   #${search_text}
    Page Should Contain  ${SearchRPagesearch_result} ${search_text}


Select product Condition
    Mouse Over  ${SearchRPageConditionDropDown}    #//*[@id="w24-button-w0"]
    Click element  ${SearchRPageConditionDropDown}      #//*[@id="w24-button-w0"]
    Click element  ${SearchRPageConditionNew}   #//*[@id="s0-13-11-5-1[0]-75[1]-14-content"]//a[2]//span[contains(text(),'New')]    #//*[@id="w24-content-0[1]"]
    Sleep  15s
#Verify filter results
    Element Should Contain  ${SearchRPageLinkNew}  New


Select delivery Options
    Mouse Over  ${SearchRPageDeliveryDropDown}
    Click element  ${SearchRPageDeliveryDropDown}
    Click element  ${SearchRPageDeliveryFreeInternationalShipping}  #//span[@id='s0-13-11-5-1[0]-75'
    Sleep  15s
#Verify filter results
    Element Should Contain  ${SearchRPageLinkFreeShipping}  Free shipping