*** Settings ***
Documentation  Element "Header and Footer"
Library  SeleniumLibrary

*** Variables ***
${HPIcon}  //div[2]/header/div[3]/a/img
${MyCartButton}  //div[@class="minicart-wrapper"]//a[@class="action showcart"]
${GoToCartPopinButton}  //div[@class="actions"]//a[@class="action primary checkout"]
${ConnexionBtn}  //div[@class="panel header"]//a[text()="Connexion"]


*** Keywords ***
Open cart throught "My Cart" Popin in header
    HeaderAndFooter.Open My Cart
    HeaderAndFooter.Go to cart CTA on Popin

Go to HP
    Click Image       ${HPIcon}

Open My Cart
    Click Element     ${MyCartButton}

Go to cart CTA on Popin
    Click Element     ${GoToCartPopinButton}


















*** Variables ***
# Header
${HPIcon}  //div[2]/header/div[3]/a/img
${MyCartButton}  //div[@class="minicart-wrapper"]//a[@class="action showcart"]
${GoToCartPopinButton}  //div[@class="actions"]//a[@class="action primary checkout"]