*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    Collections
Library    OperatingSystem

Resource   ../Global_Evironment/Global_Env.robot
Resource   ../Object_Repository/Login_obj.robot

*** Keywords ***
Login_page1
    Open Browser  ${URL}   browser=Chrome  options=add_argument("--ignore-certificate-errors");add_experimental_option("detach", True)
    [Documentation]    This keyword will perform login action on the application
    
    Input Text      ${username}    ${users}
    Input Text      ${password}     ${pwd}
    Click Element   ${Terms and conditions}
    Click Button    ${SignIn}