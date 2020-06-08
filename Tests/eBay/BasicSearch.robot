*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot

Test Setup  CommonFunctionality.Start testCase
Test Teardown  CommonFunctionality.Finish testCase


*** Variables ***


*** Test Cases ***
Verify basic search functionality eBay
    [documentation]  This test case verifies the basic search
    [tags]  Functional

# can prefix resource file
    eBay_UserDefinedKeywords.Verify search results
#    Press Keys  id:gh-btn  [Return]
#    Press Keys  css:#gh-btn  [Return]

    eBay_UserDefinedKeywords.Filter results by condition
    eBay_UserDefinedKeywords.Verify filter results



