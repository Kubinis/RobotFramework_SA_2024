*** Settings ***
Documentation  Page "My Account"
Library  SeleniumLibrary


*** Variables ***
${MyAccountUrl}  https://signals.forge.smile.fr/customer/account/



*** Keywords ***

Check Url
    Check Url is    ${MyAccountUrl}