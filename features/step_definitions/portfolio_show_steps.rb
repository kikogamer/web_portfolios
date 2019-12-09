Dado("que existe um portfolio com slug {string}") do |slug|
  @user = create(:user)
  @portfolio = create(:portfolio, slug: slug, active: true, listed: true, user_id: @user.id)
end

Dado "o portfólio possui um bloco de Sobre mim" do
  create(:block, kind: :about, side: :left, portfolio_id: @portfolio.id)
  create(:about, portfolio_id: @portfolio.id)
end

Dado "o portfólio possui um bloco de Contato" do
  create(:block, kind: :contact, side: :left, portfolio_id: @portfolio.id)
end

Dado "o portfólio possui um bloco de Informações Adicionais" do
  @block = create(:block, kind: :additional_information, side: :left, portfolio_id: @portfolio.id)
  create(:additional_information, block_id: @block.id, portfolio_id: @portfolio.id)
end

Dado "o portfólio possui um bloco de Habilidade" do
  create(:block, kind: :skill, side: :right, portfolio_id: @portfolio.id)
end

Dado "o portfólio possui um bloco de Hobby" do
  create(:block, kind: :hobby, side: :right, portfolio_id: @portfolio.id)
end

Dado "o portfólio possui um bloco de Linguagem" do
  create(:block, kind: :language, side: :right, portfolio_id: @portfolio.id)
end

Dado "o portfólio possui um bloco de Formulário de Contato" do
  create(:block, kind: :contact_form, side: :right, portfolio_id: @portfolio.id)
end

Quando "acessa a página de visualização do portfólio" do
  visit "/#{@portfolio.slug}"
end

Então("a página possui um bloco de {string}") do |kind|
  class_to_check = kind.downcase
  expect(page).to have_css(".#{class_to_check}")
end