# language:pt

@javascript
Funcionalidade: Remover bloco Sobre mim do Portfólio
  Remove um bloco Sobre mim do Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui um bloco de Sobre Mim
    E acessa a página de edição do portfólio

  Cenário: Usuário remove o bloco Sobre mim do Portfolio
    Quando remove o bloco Sobre mim
    Então o bloco 'about' é removido do portfólio