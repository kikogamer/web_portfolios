# language:pt

@javascript
Funcionalidade: Remover projetos do Portfólio
  Remove um projeto do Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui 1 projeto
    E acessa a página de edição do portfólio

  Cenário: Usuário remove um Projeto do Portfolio
    Quando remove o Projeto
    Então o Projeto é removido do Portfólio