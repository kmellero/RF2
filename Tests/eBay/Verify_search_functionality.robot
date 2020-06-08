*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/PageObjects/SearchResultsPage.robot
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/LandingPage.robot

Test Setup  CommonFunctionality.Start testCase
Test Teardown  CommonFunctionality.Finish testCase

*** Variables ***
#@{search_text_lst}  mobile  robot  books  travel  opel

*** Test Cases ***
Verify basic search functionality eBay
    [Documentation]  This case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input search text and click Search  @{search_text_lst}[1]  #robot
    SearchResultsPage.Verify Search Results  @{search_text_lst}[1]  #robot

Verify advanced search functionlity
    [Documentation]  This test case verifies the advanced search
    [Tags]  Functional

    HeaderPage.Click on Advanced Search Link  @{search_text_lst}[4]  #opel

Verify product Condition
    [Documentation]  This case verifies selected Condition Option
    [Tags]  Functional

    HeaderPage.Input search text and click Search  @{search_text_lst}[0]  #mobile
    SearchResultsPage.Select product Condition


Verify delivery Options
    [Documentation]  This case verifies selectd delivery method
    [Tags]  Functional

    HeaderPage.Input search text and click Search  @{search_text_lst}[1]  #robot
    SearchResultsPage.Select delivery Options

Verify the shopping category
    [Documentation]  This case verifies selected product category
    [Tags]  Functional

    LandingPage.Select the shopping categories