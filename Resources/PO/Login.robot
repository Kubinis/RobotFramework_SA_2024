*** Settings ***
Documentation  Page "Login"
Library  SeleniumLibrary
Resource  ../Resources/PO/HP.robot
Resource  ../Resources/PO/MyAccount.robot

*** Variables ***
${LoginUrl}     https://signals.forge.smile.fr/customer/account/login/
${emailField}   //input[@id="email"]
${pwdField}     //input[@id="pass"]
${email}        maleb+test@smile.fr
${pwd}          Smile123$
${LoginButton}  //fieldset//button[@id="send2"]



*** Keywords ***
Go To Login Page
    Click Link                        ${ConnexionBtn}
    Check Url is                      ${LoginUrl}

Login With Valid Credentials
    Input Text                        ${emailField}    ${email}
    Input Text                        ${pwdField}    ${pwd}
    Click Button                      ${LoginButton}

Verify Page Url
    MyAccount.Check Url