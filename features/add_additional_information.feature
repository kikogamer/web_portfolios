# language:pt

@javascript
Funcionalidade: Adiciona Informações Adicionais ao Portfólio
  Adiciona um quadro Informações Adicionais ao Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E acessa a página de edição do portfólio

  Cenário: Usuário adiciona um bloco Informações Adicionais ao Portfolio
    Quando adiciona um bloco 'Informações Adicionais' à direita
    Então o bloco 'informações-adicionais' é adicionado ao portfólio