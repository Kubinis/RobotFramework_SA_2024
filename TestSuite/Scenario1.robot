*** Settings ***
Documentation  Keyword to take a screen and add it to comparison folder
Library  SeleniumLibrary
Resource  ../Configuration/Keywords.robot

*** Test Cases ***
Step 1: Login to the website
    [Tags]  Login
    Open website
    Page Should Contain    Nous vous conseillons
    Login On the website
    Check Url is    ${MyAccountUrl}
    Go to HP

Step 2: Add product to cart
    [Tags]  Product
    Add products to the cart
    Page Should Contain   Kit Enrouleur + support + récepteur Signals EasyExtend®

Step 3: Checkout
    [Tags]  Checkout
    Page 1 Livration
    Page 2 Payment
    Page 3 Confirmation


    Sleep    5s
        

