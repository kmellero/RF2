#Variable scope

#Global scope
#Global variables are available everywhere in the test data

#Test suite scope
#Variables are available anywhere in the test suite where they are
#defined or imported

#Test case scope
#Variables are visible in the test case and in all user keywords
# that test uses

#Local scope
#Test cases and user keywords have local variables that are not
#visible by other tests or keywords
*** Settings ***

*** Variables ***
${VARIABLE_DEMO} =  This is GLOBAL variable

*** Test Cases ***
This is demo test 1
    ${variable_demo} =  Set Variable  This is TESTCASE variable
    Log  ${VARIABLE_DEMO}

This is demo test 2
    Log  ${VARIABLE_DEMO}

This is demo test 3
    This is demo keyword

*** Keywords ***
This is demo keyword
    [Arguments]  ${variable_demo}=This is keyword variable
      Log  ${VARIABLE_DEMO}
