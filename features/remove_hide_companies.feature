# language:pt

@javascript
Funcionalidade: Remover empresas para ocultar Portfólio
  Remove uma empresa que não poderá visualizar o Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui 1 empresa para esconder portfólio
    E acessa a página de edição do portfólio

  Cenário: Usuário remove uma Empresa do Portfolio
    Quando remove a Empresa
    Então a Empresa é removida do Portfólio