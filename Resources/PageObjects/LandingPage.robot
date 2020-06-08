*** Settings ***
Library  SeleniumLibrary
Variables  ../Webelements.py

*** Variables ***
#in Webelements.py
#${LandingPageShoppingCategoryDeals}  xpath://body[@class='desktop gh-flex']/div[@id='mainContent']/div[@class='hl-cat-nav']/ul[@class='hl-cat-nav__container']/li[10]/a[1]
#${LandingPageShppingTextDeals}  //div[@class='navigation-desktop']//a[contains(text(),'Deals')]

*** Keywords ***
Select the shopping categories
    Mouse Over  ${LandingPageShoppingCategoryDeals}
    Click element  ${LandingPageShoppingCategoryDeals}
#Verify selected category
    Element Should Contain  ${LandingPageShppingTextDeals}  Deals

