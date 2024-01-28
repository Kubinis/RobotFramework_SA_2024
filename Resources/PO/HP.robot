*** Settings ***
Documentation  Page "Home Page"
Library  SeleniumLibrary

*** Variables ***
${CookieBtn}  //div[@id="cookiePolicyBar"]//div[@id="ow_consent_prompt_submit"]
${PDPFromHP1}  //div[@class="block-content content"]//img[@alt="Kit Enrouleur + support + récepteur Signals EasyExtend®"]
${PDPFromHP2}  //div[@class="block-content content"]//img[@alt="Enrobé Résine Haute Performance 25 kg"]


*** Keywords ***
Open product1
    Click Image    ${PDPFromHP1}

Open product2
    Click Image    ${PDPFromHP2}