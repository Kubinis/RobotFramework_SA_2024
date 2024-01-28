*** Settings ***
Documentation  Page "Cart"
Library  SeleniumLibrary

*** Variables ***
${SetProductQuantity}     //div[@class='control qty']//input[@title='Qté']
${ProductQuantity}        5
${UpdateCart}             //div[@class='cart main actions']//button[@name='update_cart_action']
${COnfirmCart}            //*[@id="maincontent"]/div[3]/div/div[5]/div/ul/li[1]/button
${TrashIcon}              //div[@class='cart-container']//a[@title='Supprimer l’élément']
${count}                  Get Element Count  ${TrashIcon}

*** Keywords ***
Set quantity of product
    Cart.Set quantity of product - one

Set quantity of product - one
    Wait Until Page Contains Element    ${SetProductQuantity}
    Input Text                          ${SetProductQuantity}    ${ProductQuantity}
    Click Button                        ${UpdateCart}

Verify Product in the cart
    Page Should Contain   Kit Enrouleur + support + récepteur Signals EasyExtend®

#TTEESSTT
#    log  ${count}

Delete All From Cart
  Go To  https://signals.forge.smile.fr/checkout/cart/
  [Arguments]  ${num1}
  ${result}  Get Element Count  ${TrashIcon}
  FOR  ${i}  IN  RANGE  ${result}
    Run Keyword if  ${result} > 0  Delete One Product
  END


Delete One Product
    Click Link                        ${TrashIcon}


#Clearing Cart
#    Run Keyword if  ${result} > 0  Delete One Product
##    ...  ELSE IF  ${MY_VALUE} == 10  Keyword 2
##    ...  ELSE  Keyword 3
#
#
#
#FOR  ${MyItem}  IN  @{ITEMS}
#    Log  ${MyItem}
#    Run Keyword If  "${MyItem}" == "Item 3"  Exit For Loop
#    Log  Didn't exit yet
#END
