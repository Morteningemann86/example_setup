*** Settings ***
Documentation       Template robot for best practice

# Variables    variables.py    # python file
# Variables    variables.robot    # robot file
Resource            invoice_entry_workflow.robot
Resource            common_elements.robot
Library             OperatingSystem
Library             Collections
Library             String
Library             RPA.Tables

Task Setup          Setup
Task Teardown       Teardown


*** Variables ***
${CONFIG_FILE}      config${/}config.txt
${SALES_REPORT}     documentation${/}sales_report.xlsx


*** Tasks ***
Start Process
    ${config}=    Read Config File
    Log To Console    URL is: ${config['URL']}

Enter Invoices
    Open Workbook    ${SALES_REPORT}
    ${invoices}=    Read Worksheet As Table    header=True
    FOR    ${invoice}    IN    @{invoices}
        TRY
            Enter Invoice Data    ${invoice}
        EXCEPT
            Log To Console    "An error occurred while entering ${invoice}."
        END
    END


*** Keywords ***
Setup
    Log    Setup

Teardown
    Log    Teardown

Read Config File
    ${file_content}=    Get File    ${CONFIG_FILE}
    @{lines}=    Split To Lines    ${file_content}
    ${config}=    Create Dictionary
    FOR    ${line}    IN    @{lines}
        ${key}    ${value}=    Split String    ${line}    =
        Set To Dictionary    ${config}    ${key}    ${value}
    END
    RETURN    ${config}
