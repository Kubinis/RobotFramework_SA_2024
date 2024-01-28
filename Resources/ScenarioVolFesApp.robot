*** Settings ***
Documentation  Keyword to take a screen and add it to comparison folder
Library  SeleniumLibrary

Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/Checkout.robot
Resource  ../Resources/PO/HeaderAndFooter.robot
Resource  ../Resources/PO/HP.robot
Resource  ../Resources/PO/Login.robot
Resource  ../Resources/PO/MyAccount.robot
Resource  ../Resources/PO/PDP.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Common.robot

*** Keywords ***
Add products to the cart from HP1
    HP.Open product1
    PDP.Add to cart

Add products to the cart from HP2
    HP.Open product2
    PDP.Add to cart






