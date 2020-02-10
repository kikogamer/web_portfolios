# language:pt

@javascript
Funcionalidade: Adicionar projetos ao Portfólio
  Adiciona um novo projeto ao Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui um bloco de Projetos
    E acessa a página de edição do portfólio

  Cenário: Usuário adiciona um novo projeto do tipo Código Aberto ao Portfolio
    Quando adiciona um novo Projeto do tipo 'Código Aberto'
    Então o Projeto é adicionado ao Portfólio

  Cenário: Usuário adiciona um novo projeto do tipo Pessoal ao Portfolio
    Quando adiciona um novo Projeto do tipo 'Pessoal'
    Então o Projeto é adicionado ao Portfólio