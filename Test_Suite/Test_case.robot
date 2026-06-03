*** Settings ***
Documentation    Login Test Case
Resource         ../User_Defined_Keywords/Login_udk.robot

*** Test Cases ***
Verify User Login

    [Documentation]    This test case will verify the login functionality of the application
    Login_page1