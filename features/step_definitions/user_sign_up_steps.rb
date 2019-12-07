Dado('que o novo usuário tem paramêtros válidos') do
  @user = User.new(attributes_for(:user))
end

Dado('que o novo usuário tem paramêtros inválidos') do
  @user = User.new
end

Quando("preenche e submete o formulário para cadastro") do
  fill_in "user[email]", with: @user.email
  fill_in "user[password]", with: @user.password
  fill_in "user[password_confirmation]", with: @user.password_confirmation
  click_button "Criar Agora"
end

Então("o usuário será redirecionado para página de erros") do
  expect(page).to have_current_path('/users')
end