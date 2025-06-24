*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.amazon.com.br/    
${MENU}   id=nav-hamburger-menu

*** Keywords ***
Abrir o navegador
    Open Browser    Chrome
    Maximize Browser Window
options=add_experimental_option("detach", True)

# Fechar o navegador
#     Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url${URL}