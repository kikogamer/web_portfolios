# language:pt

@javascript
Funcionalidade: Remover redes sociais do Portfólio
  Remove uma Rede Social do Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui 1 Rede Social
    E acessa a página de edição do portfólio

  Cenário: Usuário remove uma Rede Social do Portfolio
    Quando remove uma Rede Social
    Então a Rede Social é removida do Portfólio