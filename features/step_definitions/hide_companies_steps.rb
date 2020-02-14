# frozen_string_literal: true

Dado 'o portfólio possui um bloco de Empresas para esconder perfil' do
  create(:block, kind: :hide_companies, side: :right, portfolio_id: @portfolio.id)
end

Quando 'adiciona uma nova Empresa para esconder portfólio' do
  @hide_company = attributes_for(:hide_company)
  fill_in 'hide-company-name', with: @hide_company[:name]
  find('#add-hide-company').click
  wait_for_ajax
end

Então 'a Empresa é adicionada ao Portfólio' do
  @portfolio.reload
  expect(@portfolio.hide_companies.count).to eq 1
  expect(page).to have_css('.resource-hide-company', count: 1)
end

Dado 'o portfólio possui 1 empresa para esconder portfólio' do
  create(:block, kind: :hide_companies, side: :right, portfolio_id: @portfolio.id)
  @skill = create(:hide_company, portfolio_id: @portfolio.id)
end

Quando 'remove a Empresa' do
  find('.remove-hide-company').click
  wait_for_ajax
end

Então 'a Empresa é removida do Portfólio' do
  @portfolio.reload
  expect(@portfolio.hide_companies.count).to eq 0
  expect(page).to_not have_css('.resource-hide-company')
end
