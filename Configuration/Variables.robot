*** Variables ***
${MainUrl}  https://signals:12wDj5SonltD@signals.forge.smile.fr/

# HP
${CookieBtn}  //div[@id="cookiePolicyBar"]//div[@id="ow_consent_prompt_submit"]
${PDPFromHP}  //div[@class="block-content content"]//img[@alt="Kit Enrouleur + support + récepteur Signals EasyExtend®"]

# Header
${HPIcon}  //div[2]/header/div[3]/a/img
${MyCartButton}  //div[@class="minicart-wrapper"]//a[@class="action showcart"]
${GoToCartPopinButton}  //div[@class="actions"]//a[@class="action primary checkout"]

# Login page
${LoginUrl}  https://signals.forge.smile.fr/customer/account/login/
${ConnexionBtn}  //div[@class="panel header"]//a[text()="Connexion"]
${emailField}  //input[@id="email"]
${pwdField}  //input[@id="pass"]
${email}  maleb+test@smile.fr
${pwd}  Smile123$
${LoginButton}  //fieldset//button[@id="send2"]

# My Account
${MyAccountUrl}  https://signals.forge.smile.fr/customer/account/

# PDP
${AddToCartButtonOnPdp}  //button[@id="product-addtocart-button"]

# Cart page
${SetProductQuantity}  //div[@class='control qty']//input[@title='Qté']
${ProductQuantity}  1
${UpdateCart}  //div[@class='cart main actions']//button[@name='update_cart_action']
${COnfirmCart}  //*[@id="maincontent"]/div[3]/div/div[5]/div/ul/li[1]/button

# Checkout
  # LivrationPage1
${CheckoutLivrationPage1}  https://signals.forge.smile.fr/checkout/#shipping
${NomField}  //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='lastname']
${Nom}  AutoTestNom
${SiretField}  //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='custom_attributes[signals_siret]']
${Siret}  AutoTestSiret
${CityField}  //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='city']
${City}  AutoTestCity
${EmailChekoutField}  //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='custom_attributes[signals_email]']
${EmailChekout}  AutoTestEmail
${AddressChekoutField}  //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='street[0]']
${AddressChekout}  AutoTestAddress
${AddressChekoutField2}  //li[@id="shipping"]//div[@class="field additional _error"]//div[@class="control"]//input[@name='street[1]']
${AddressChekout2}  AutoTestAddress2
${AddressChekoutField3}  //li[@id="shipping"]//div[@class="field additional _error"]//div[@class="control"]//input[@name='street[2]']
${AddressChekout3}  AutoTestAddress3
${TelephoneChekoutField}  //li[@id="shipping"]//div[@class="field _required"]//div[@class="control _with-tooltip"]//input[@name='telephone']
${TelephoneChekout}  AutoTestTelephone
${CodeChekoutField}  //li[@id="shipping"]//div[@class="field _required"]//div[@class="control"]//input[@name='postcode']
${CodeChekout}  12345
${SubmitButtonPage1}  //div[@id="shipping-method-buttons-container"]//button[@type="submit"]
${CheckoutPaymentPage2}  https://signals.forge.smile.fr/checkout/#payment
  # Page2
${SubmitButtonPage2}  //div[@class="actions-toolbar"]//button[@data-bind="click: savePayment"]
${CheckoutConfirmationPage3}  https://signals.forge.smile.fr/checkout/#confirmation
  # Page3
${Checkbox}  //div[@class='checkout-agreement field choice required']//input[@type="checkbox"]
${SubmitButtonPage3}  //div[@class='primary']//button[@data-bind="click: placeOrder"]
 # Page4
${CheckoutSuccessPage4}  https://signals.forge.smile.fr/checkout/onepage/success/