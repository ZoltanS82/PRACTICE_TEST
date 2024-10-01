*** Settings ***
Library     Browser
Library     Dialogs
Library    Browser
Library    FakerLibrary    locale=hu_HU

Resource    user_access.resource
Resource    Pages/registration_page.resource
Resource    Pages/items.resource
Resource    Pages/shopping_cart_page.resource

*** Variables ***
${TRICENTIS_WEBSHOP}                      https://demowebshop.tricentis.com/


*** Test Cases ***
TC-001: Purchase a book
    ${credentials}=    New Registration
    Set Test Variable    ${EMAIL}    ${credentials}[0]
    Set Test Variable    ${PASSWORD}    ${credentials}[1]
    Log in with user    ${EMAIL}    ${PASSWORD}
    Click    ${BOOKS_SECTION}
    Click    ${ADD_TO_CART_1}
    Click    ${SHOPING_CART}
    Click    ${SHOPING_CART}
    Click    ${TERM_CHECKBOX}
    Click    ${CHECKOUT_BUTTON}
    Fill out the Billing Address section
    Click    ${BILLING_SAVE}
    Click    ${SHIPPING_SAVE}
    Click    ${SHIPING_SAVE_1}
    Click    ${PAYMENT_METHOD}
    Click    ${PAYMENT_INFO}
    Click    ${CONFIRM}
    Click    ${LOG_OUT_BUTTON}





