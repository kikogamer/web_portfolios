# language:pt

@javascript
Funcionalidade: Portfólio Show
  Visualizar Portfólio

  Cenário de Fundo:
    Dado que existe um portfolio com slug 'my_portfolio'
    E o portfólio possui um bloco de Perfil
    E o portfólio possui um bloco de Sobre mim
    E o portfólio possui um bloco de Contato
    E o portfólio possui um bloco de Informações Adicionais
    E o portfólio possui um bloco de Experiência
    E o portfólio possui um bloco de Educação
    E o portfólio possui um bloco de Habilidade
    E o portfólio possui um bloco de Hobby
    E o portfólio possui um bloco de Linguagem
    E o portfólio possui um bloco de Formulário de Contato
    
  Cenário: 'Portfólio possui bloco de Perfil'
    Quando acessa a página de visualização do portfólio
    Então a página possui um bloco de 'profile'

  Cenário: 'Portfólio possui bloco de Sobre mim'
    Quando acessa a página de visualização do portfólio
    Então a página possui um bloco de 'about'

  Cenário: 'Portfólio possui bloco de Contato'
    Quando acessa a página de visualização do portfólio
    Então a página possui um bloco de 'contact'

  Cenário: 'Portfólio possui bloco de Informações Adicionais'
    Quando acessa a página de visualização do portfólio
    Então a página possui um bloco de 'additional-information'

  Cenário: 'Portfólio possui bloco de Experiência'
    Quando acessa a página de visualização do portfólio
    Então a página possui um bloco de 'experience'

  Cenário: 'Portfólio possui bloco de Educação'
    Quando acessa a página de visualização do portfólio
    Então a página possui um bloco de 'education'

  Cenário: 'Portfólio possui bloco de Habilidade'
    Quando acessa a página de visualização do portfólio
    Então a página possui um bloco de 'skill'

  Cenário: 'Portfólio possui bloco de Hobby'
    Quando acessa a página de visualização do portfólio
    Então a página possui um bloco de 'hobby'

  Cenário: 'Portfólio possui bloco de Linguagem'
    Quando acessa a página de visualização do portfólio
    Então a página possui um bloco de 'language'

  Cenário: 'Portfólio possui bloco de Formulário de Contato'
    Quando acessa a página de visualização do portfólio
    Então a página possui um bloco de 'contact'