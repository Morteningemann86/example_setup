*** Settings ***
Library    RPA.Browser.Selenium

Resource    common_elements.robot

*** Variables ***
${URL}  http://example-invoice-app.com

*** Keywords ***
Open Invoice Application
    Open Browser  ${URL}  browser=Chrome

Enter Invoice Data
    [Arguments]  ${invoice_data}
    Open Invoice Application
    Input Text  locator_for_invoice_field  ${invoice_data['Field1']}
    Input Text  locator_for_another_field  ${invoice_data['Field2']}
    # More steps for entering data
    Submit Invoice
    Close Browser

Submit Invoice
    Click Button  submit_button_locator
