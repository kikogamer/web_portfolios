# language:pt

@javascript
Funcionalidade: Editar Sobre Mim
  Editar os campos do bloco sobre mim

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui um bloco de Sobre Mim
    E acessa a página de edição do portfólio

  Cenário: Usuário edita o campo sobre mim
    Quando edita o campo sobre mim
    E sai do campo sobre mim 
    Então o campo 'description' do bloco sobre mim é atualizado
