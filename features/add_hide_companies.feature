# language:pt

@javascript
Funcionalidade: Adicionar empresas para ocultar Portfólio
  Adiciona uma nova empresa que não poderá visualizar o Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui um bloco de Empresas para esconder perfil
    E acessa a página de edição do portfólio

  Cenário: Usuário adiciona uma nova empresa para esconder Portfolio
    Quando adiciona uma nova Empresa para esconder portfólio
    Então a Empresa é adicionada ao Portfólio