# language:pt

@javascript
Funcionalidade: Adicionar redes sociais ao Portfólio
  Adiciona uma nova Rede Social ao Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui um bloco de Redes Sociais
    E acessa a página de edição do portfólio

  Cenário: Usuário adiciona a Rede Social do Facebook ao Portfolio
    Quando adiciona a Rede Social 'Facebook' 
    Então a Rede Social 'facebook' é adicionada ao Portfólio

  Cenário: Usuário adiciona a Rede Social do Twitter ao Portfolio
    Quando adiciona a Rede Social 'Twitter' 
    Então a Rede Social 'twitter' é adicionada ao Portfólio

  Cenário: Usuário adiciona a Rede Social do LinkedIn ao Portfolio
    Quando adiciona a Rede Social 'LinkedIn' 
    Então a Rede Social 'linkedin' é adicionada ao Portfólio

  Cenário: Usuário adiciona a Rede Social do Github ao Portfolio
    Quando adiciona a Rede Social 'Github' 
    Então a Rede Social 'github' é adicionada ao Portfólio

  Cenário: Usuário adiciona a Rede Social do Instagram ao Portfolio
    Quando adiciona a Rede Social 'Instagram' 
    Então a Rede Social 'instagram' é adicionada ao Portfólio