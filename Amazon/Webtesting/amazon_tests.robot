*** Settings ***
Resource               amazon_resources.robot
Test Setup             Abrir o navegador
Test Teardown          Fechar o navegador

*** Test Cases ***
Case test 01 - Access to menu "Eletronicos"
    [Documentation]    Este teste verifica o acessa ao menu "Eletrônicos" no site Amazon.com.br
    ...                e verifica a categoria "Computadores e Informática"
    [Tags]             menu  menu_eletronicos  categoria  categoria_computadores
    Acessar a home page do site Amazon.com.br
#     Acessar o menu "Eletrônicos"
#     Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
#     Verificar se aparece a frase "Eletrônicos e Tecnologia"
#     Verificar se aparece a categoria "Computadores e Informática"

# Case test 02 - Search a product
#     [Documentation]    Este teste verifica a pesquisa de um produto no site Amazon.com.br
#     ...                e verifica se o produto pesquisado é exibido na tela de resultados
#     [Tags]             busca_produto  xbox  produto
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     O sistema deve exibir a tela com o resultado da pesquisa, istando o produto pesquisado (conferir um).


