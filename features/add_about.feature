# language:pt

@javascript
Funcionalidade: Adiciona Sobre Mim ao Portfólio
  Adiciona um quadro Sobre Mim ao Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E acessa a página de edição do portfólio

  Cenário: Usuário adiciona um bloco Sobre mim ao Portfolio
    Quando adiciona um bloco 'Sobre mim' à esquerda
    Então o bloco 'Sobre-mim' é adicionado ao portfólio