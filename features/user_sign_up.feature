# language:pt

  @user_sign_up
  Funcionalidade: Fazer cadastro no site
    O usuário efetua o cadastro e obtém acesso ao portfolio

    Cenário de Fundo:
      Dado que o usuário está na página principal
    
    Cenário: Dados válidos
      Dado que o novo usuário tem paramêtros válidos
      Quando preenche e submete o formulário para cadastro
      Então o usuário deve ver seus portfólios
      E é visível o link sair

    Cenário: Dados inválidos
      Dado que o novo usuário tem paramêtros inválidos
      Quando preenche e submete o formulário para cadastro
      Então o usuário será redirecionado para página de erros