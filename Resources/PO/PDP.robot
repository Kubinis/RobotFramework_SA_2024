*** Settings ***
Documentation  Page "Product detail page"
Library  SeleniumLibrary

*** Variables ***
${AddToCartButtonOnPdp}  //button[@id="product-addtocart-button"]



*** Keywords ***
Add to cart
    Click Button    ${AddToCartButtonOnPdp}
    Go To           ${MainUrl}