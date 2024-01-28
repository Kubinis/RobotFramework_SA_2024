*** Settings ***
Documentation   End2End test cases
Library         SeleniumLibrary
Resource        ../Resources/ScenarioVolFesApp.robot
Resource        ../Resources/Common.robot
Resource        ../Resources/PO/Cart.robot
Resource        ../Resources/PO/Checkout.robot
Resource        ../Resources/PO/HeaderAndFooter.robot
Resource        ../Resources/PO/HP.robot
Resource        ../Resources/PO/Login.robot
Resource        ../Resources/PO/MyAccount.robot
Resource        ../Resources/PO/PDP.robot
Resource        ../Resources/PO/Cart.robot
#robot -d results tests\Scenariovolfes1.robot
Suite Setup     Common.Open website and Accept cookie
#Test Setup
#Test Teardown
Suite Teardown  Delete All From Cart  ${TrashIcon}

*** Variables ***
${MainUrl}  https://signals:12wDj5SonltD@signals.forge.smile.fr/
${Browser}  Chrome
*** Test Cases ***
Step 1: Login to the website
    [Tags]  Login  Smoke
#    log   Starting...
    Go To Login Page
    Login With Valid Credentials
    Verify Page Url
    Go to HP

Step 2: Add product to cart
    [Tags]  Product  Smoke
    Add Products To The Cart From HP1
    Add Products To The Cart From HP2
    Open Cart Throught "My Cart" Popin In Header
    Verify Product In The Cart
    Set Quantity Of Product

Step 3: Checkout
    [Tags]  Checkout  Smoke
    Go from Cart to Checkout
    Page 1 Livration (Adress Already Exist)
    Page 2 Payment
    Page 3 Confirmation
    Verify Success page

Step 4: Many Products
    [Tags]  Products  Smoke
    Go To  ${MainUrl}
    Add Products To The Cart From HP1
    Add Products To The Cart From HP2
        

