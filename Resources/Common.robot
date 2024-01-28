*** Settings ***
Documentation  Common actions
Library  SeleniumLibrary


*** Keywords ***
Open website and Accept cookie
    Open Browser            ${MainUrl}  ${Browser}
#   Set Window Size         1280    720
    Maximize Browser Window
    Set Selenium speed      .2s
    Set selenium timeout    10s
    Page Should Contain     Nous vous conseillons
    Wait Until Page Contains Element  ${CookieBtn}
    Click Element                     ${CookieBtn}

Accept cookie
    Wait Until Page Contains Element  ${CookieBtn}
    Click Element                     ${CookieBtn}

Check Url is
    [Arguments]  ${url}
    ${currenturl} =  Get Location
    Should Be Equal  ${currenturl}  ${url}



#Insert Testing Data

#Cleanup Testing Data














*** Variables ***