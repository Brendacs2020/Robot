*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${URL}    http://www.amazon.com.br/  
${AMAZON_HOME}    nav-logo-sprites
${MENU_ELETRONICOS}   //a[contains(text(),'Eletrônicos')]
${HEADER_ELETRONICOS}   //div[@class='_Y29ud_bxcGridText_3AiaV _Y29ud_cgTextLeft_3L3pI _Y29ud_bxcGridTextLight_f2KTn']//span[contains(text(),'Eletrônicos e Tecnologia')]
${SEARCH}    twotabsearchtextbox
${SEARCH_BUTTON}    nav-search-submit-button

*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    Execute Javascript    document.body.style.zoom="80%"
    Reload Page
    Wait Until Element Is Visible    locator=${AMAZON_HOME}    timeout=10s

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Verificar se aparece a frase "${TEXT}"
    # Wait Until Page Contains    text=${tesxt}   timeout=10s
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}    timeout=10s

Verificar se o título da página fica "${TITLE}"
    Title Should Be    title=${TITLE}

Verificar se aparece a categoria "${CATEGORY}"
    Wait Until Page Contains    text=${CATEGORY}   timeout=10s
    Element Should Be Visible    locator=//span[contains(text(),'${CATEGORY}')]
    Click Element    locator=//span[contains(text(),'${CATEGORY}')]

Acessar o menu "Eletrônicos"
    Click Element    ${MENU_ELETRONICOS}

Digitar o nome de produto "${PRODUCT}" no campo de pesquisa
    Input Text    locator=${SEARCH}    text=${PRODUCT}

Clicar no botão de pesquisa
    Click Element    ${SEARCH_BUTTON}
    
Verificar se o resultado da pesquisa contém o texto "${PRODUCT}"
    Wait Until Element Is Visible   locator=//span[contains(text(),'Tablet Samsung Galaxy Tab S10 FE, Cinza, 128GB, 8G')]       timeout=10s
    Element Should Be Visible    locator=//span[contains(text(),'Tablet Samsung Galaxy Tab S10 FE, Cinza, 128GB, 8G')]