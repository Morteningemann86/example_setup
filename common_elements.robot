*** Settings ***
Documentation    
...    his resource file, `common_elements.robot`, contains a collection of reusable keywords 
...    that are common across various RPA projects. It includes functionalities for web automation, 
...    Excel operations, email notifications, and date/time handling. These keywords are designed 
...    to be generic and versatile, enabling their use in diverse automation tasks without modification.

...    Key Features:
...    - Web interaction (login, logout, click operations) using SeleniumLibrary.
...    - Generating timestamps using DateTime.

...    Prerequisites:
...    - Ensure that all required libraries are installed and up to date.
...    - Update locators and other parameters in the keywords according to your specific application's requirements.

...    Usage Note:
...    - These keywords are intended as a starting point and may need to be modified or extended 
...    to suit specific project needs.

Library    RPA.Browser.Selenium
Library    RPA.Excel.Files
Library    DateTime


*** Keywords ***
Log In To Application
    [Arguments]  ${username}  ${password}  ${url}
    Open Browser  ${url}  browser=Chrome
    Input Text  id=username_field  ${username}
    Input Text  id=password_field  ${password}
    Click Button  id=login_button
    Wait Until Page Contains  Welcome

Log Out Of Application
    Click Button  id=logout_button
    Close Browser

Generate Timestamp
    ${timestamp} =  Get Current Date  result_format=%Y-%m-%d %H:%M:%S
    [Return]  ${timestamp}
