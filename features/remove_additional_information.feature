# language:pt

@javascript
Funcionalidade: Remover bloco de Informações Adicionais do Portfólio
  Remove um bloco Informações Adicionais do Portfólio

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui um bloco de Informações Adicionais
    E acessa a página de edição do portfólio

  Cenário: Usuário remove o bloco de Informações Adicionais do Portfolio
    Quando remove o bloco Informações Adicionais
    Então o bloco 'additional_information' é removido do portfólio