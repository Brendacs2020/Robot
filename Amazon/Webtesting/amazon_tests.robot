*** Settings ***
Resource               amazon_resources.robot
Test Setup             Abrir o navegador
Test Teardown          Fechar o navegador

*** Test Cases ***
Case test 01 - Access to menu "Eletronicos"
    [Documentation]    Este teste verifica o acessa ao menu "Eletrônicos" no site Amazon.com.br
    ...                e verifica a categoria "Computadores e Informática"
    [Tags]             menu  menu_eletronicos  categoria  categoria_computadores
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Acessar o menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Video Games"

Case test 02 - Search a product
    [Documentation]    Este teste verifica a pesquisa de um produto no site Amazon.com.br
    ...                e verifica se o produto pesquisado é exibido na tela de resultados
    [Tags]             busca_produto  xbox  produto
    Digitar o nome de produto "GALAXY TAB S10 FE" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar se o resultado da pesquisa contém o texto "GALAXY TAB S10 FE"



