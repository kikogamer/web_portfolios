# language:pt

@javascript
Funcionalidade: Editar Informações Adicionais
  Editar os campos do bloco informações adicionais

  Cenário de Fundo:
    Dado usuário está logado
    E possui o portfólio com slug 'my_portfolio'
    E o portfólio possui um bloco de Informações Adicionais
    E acessa a página de edição do portfólio

  Cenário: Usuário edita o campo título
    Quando edita o campo título do bloco informações adicionais
    E sai do campo título do bloco informações adicionais
    Então o campo 'title' do bloco informações adicionais é atualizado

  Cenário: Usuário edita o campo descrição
    Quando edita o campo descrição do bloco informações adicionais
    E sai do campo descrição do bloco informações adicionais
    Então o campo 'description' do bloco informações adicionais é atualizado