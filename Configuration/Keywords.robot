*** Settings ***
Documentation  Keyword to take a screen and add it to comparison folder
Library  SeleniumLibrary

Resource  Variables.robot

*** Keywords ***
Open website
    Open Browser  ${MainUrl}  Chrome
#   Set Window Size    1280    720
    Maximize Browser Window

Check Url is
    [Arguments]  ${url}
    ${currenturl} =  Get Location
    Should Be Equal  ${currenturl}  ${url}
    
#Navigation
Login On the website
    Click Link  ${ConnexionBtn}
    Check Url is  ${LoginUrl}
    Wait Until Page Contains Element  ${CookieBtn}
    Click Element  ${CookieBtn}
    Input Text    ${emailField}    ${email}
    Input Text    ${pwdField}    ${pwd}
    Click Button  ${LoginButton}

Go to HP
    Click Image    ${HPIcon}

Add products to the cart
    Click Image    ${PDPFromHP}
    Click Button    ${AddToCartButtonOnPdp}
    Click Element    ${MyCartButton}
    Click Element  ${GoToCartPopinButton}
    Wait Until Page Contains Element  ${SetProductQuantity}

Page 1 Livration
    Input Text    ${SetProductQuantity}    ${ProductQuantity}
    Click Button    ${UpdateCart}
    Click Element    ${COnfirmCart}
    Sleep    2s
    Check Url is    ${CheckoutLivrationPage1}
   # Wait Until Page Contains Element   ${NomField}
    #Input Text    ${NomField}    ${Nom}
    #Input Text    ${SiretField}    ${Siret}
    #Input Text    ${CityField}    ${City}
    #Input Text    ${EmailChekoutField}    ${EmailChekout}
    #Input Text    ${AddressChekoutField}    ${AddressChekout}
    #Sleep    5s
    #Input Text    ${AddressChekoutField2}    ${AddressChekout2}
    #Input Text    ${AddressChekoutField3}    ${AddressChekout3}
    #Input Text    ${TelephoneChekoutField}    ${TelephoneChekout}
    #Input Text    ${CodeChekoutField}    ${CodeChekout}
    Wait Until Page Contains Element   ${SubmitButtonPage1}
    Click Button    ${SubmitButtonPage1}
    Sleep    2s
    Check Url is    ${CheckoutPaymentPage2}

Page 2 Payment
    Scroll Element Into View    ${SubmitButtonPage2}
    Click Button    ${SubmitButtonPage2}
    Sleep    2s
    Check Url is    ${CheckoutConfirmationPage3}
    
    
Page 3 Confirmation
    Select Checkbox    ${Checkbox}
    Click Button    ${SubmitButtonPage3}
    Sleep    2s
    Check Url is    ${CheckoutSuccessPage4}