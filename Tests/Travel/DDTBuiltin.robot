*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/common.robot

Suite Setup  common.Start TestCase
Suite Teardown  common.Finish TestCase
Test Template  Invalid Login Scenarios

*** Test Cases ***                                  USERNAME        PASSWORD        ERROR
Verify Login Fails - Blank Username and Password    ${EMPTY}        ${EMPTY}        Epic sadface: Username is required
Verify Login Fails - Wrong Username                 standard_us     secret_sauce    Epic sadface: Username and password do not match any user in this service
Verify Login Fails - LockedOut Username             locked_out_user  secret_sauce   Epic sadface: Sorry, this user has been locked out.
Verify Login Fails - Wrong Password                 standard_user   secret_s        Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong Username and Password    standard_us     secret_s        Epic sadface: Username and password do not match any user in this service

*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
#moved ${empty} to first TC, otherwise, cannot empty input text fields, used also: clear Bool=True
#    Clear Element Text  ${txtbox_username}     #it emptied field, yet input the last text
#    Clear Element Text  ${txtbox_password}     #as above
#    Click Button  ${btn_login}
#    Sleep  3s
    Input Text  ${txtbox_username}  ${username}
    Input Text  ${txtbox_password}  ${password}
    Click Button  ${btn_login}
    Sleep  2s
    Element Should Contain  ${txt_error}  ${error_msg}
    Sleep  2s