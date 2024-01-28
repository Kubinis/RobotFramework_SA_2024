*** Settings ***
Documentation  Pages "Checkout: 1,2,3,4"
Library  SeleniumLibrary

*** Variables ***
${CheckoutLivrationPage1}     https://signals.forge.smile.fr/checkout/#shipping
${NomField}                   //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='lastname']
${Nom}                        AutoTestNom
${SiretField}                 //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='custom_attributes[signals_siret]']
${Siret}                      AutoTestSiret
${CityField}                  //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='city']
${City}                       AutoTestCity
${EmailChekoutField}          //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='custom_attributes[signals_email]']
${EmailChekout}               AutoTestEmail
${AddressChekoutField}        //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='street[0]']
${AddressChekout}             AutoTestAddress
${AddressChekoutField2}       //li[@id="shipping"]//div[@class="field additional _error"]//div[@class="control"]//input[@name='street[1]']
${AddressChekout2}            AutoTestAddress2
${AddressChekoutField3}       //li[@id="shipping"]//div[@class="field additional _error"]//div[@class="control"]//input[@name='street[2]']
${AddressChekout3}            AutoTestAddress3
${TelephoneChekoutField}      //li[@id="shipping"]//div[@class="field _required"]//div[@class="control _with-tooltip"]//input[@name='telephone']
${TelephoneChekout}           AutoTestTelephone
${CodeChekoutField}           //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='postcode']
${CodeChekout}                12345
${SubmitButtonPage1}          //div[@id="shipping-method-buttons-container"]//button[@type="submit"]
${CheckoutPaymentPage2}       https://signals.forge.smile.fr/checkout/#payment
  # Page2
${SubmitButtonPage2}          //div[@class="actions-toolbar"]//button[@data-bind="click: savePayment"]
${CheckoutConfirmationPage3}  https://signals.forge.smile.fr/checkout/#confirmation
  # Page3
${Checkbox}                   //div[@class='checkout-agreement field choice required']//input[@type="checkbox"]
${SubmitButtonPage3}          //div[@class='primary']//button[@data-bind="click: placeOrder"]
 # Page4
${CheckoutSuccessPage4}       https://signals.forge.smile.fr/checkout/onepage/success/
${CheckoutSuccessPage4Title}  Merci de votre achat !


*** Keywords ***
Go from Cart to Checkout
    Click Element                       ${COnfirmCart}
    Sleep    2s
    Check Url is                        ${CheckoutLivrationPage1}

Page 1 Livration (adress already exist)

   # Wait Until Page Contains Element   ${NomField}
    #Input Text                         ${NomField}    ${Nom}
    #Input Text                         ${SiretField}    ${Siret}
    #Input Text                         ${CityField}    ${City}
    #Input Text                         ${EmailChekoutField}    ${EmailChekout}
    #Input Text                         ${AddressChekoutField}    ${AddressChekout}
    #Sleep    5s
    #Input Text                         ${AddressChekoutField2}    ${AddressChekout2}
    #Input Text                         ${AddressChekoutField3}    ${AddressChekout3}
    #Input Text                         ${TelephoneChekoutField}    ${TelephoneChekout}
    #Input Text                         ${CodeChekoutField}    ${CodeChekout}
    Wait Until Page Contains Element    ${SubmitButtonPage1}
    Click Button                        ${SubmitButtonPage1}
    Sleep    2s
    Check Url is                        ${CheckoutPaymentPage2}

Page 2 Payment
    Scroll Element Into View            ${SubmitButtonPage2}
    Click Button                        ${SubmitButtonPage2}
    Sleep    2s
    Check Url is                        ${CheckoutConfirmationPage3}


Page 3 Confirmation
    Select Checkbox                     ${Checkbox}
    Click Button                        ${SubmitButtonPage3}
    Sleep    2s


Verify Success page
    Check Url is                        ${CheckoutSuccessPage4}
    wait until page contains            ${CheckoutSuccessPage4Title}
