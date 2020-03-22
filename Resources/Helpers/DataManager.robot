*** Settings ***
Library    ../../CustomLibs/csv_retrieval.py

*** Keywords ***
Get CSV data
    [Arguments]    ${FilePath}
    ${Data} =    read csv file    ${FilePath}
    [Return]    ${Data}