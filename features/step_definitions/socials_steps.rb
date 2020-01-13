# frozen_string_literal: true

Dado 'o portfólio possui um bloco de Redes Sociais' do
  create(:block, kind: :social, side: :left, portfolio_id: @portfolio.id)
end

Quando 'adiciona a Rede Social {string}' do |kind|
  @social = attributes_for(:social)
  select kind, from: 'select-social-kind'
  fill_in 'social-url', with: @social[:url]
  find('#add-social').click
  wait_for_ajax
end

Então 'a Rede Social {string} é adicionada ao Portfólio' do |kind|
  @portfolio.reload
  expect(@portfolio.socials.exists?(kind: kind)).to be true
  expect(page).to have_css('.resource-social', count: 1)
end

Dado 'o portfólio possui 1 Rede Social' do
  create(:block, kind: :social, side: :left, portfolio_id: @portfolio.id)
  @social = create(:social, portfolio_id: @portfolio.id)
end

Quando 'remove uma Rede Social' do
  find('.remove-social').click
  wait_for_ajax
end

Então 'a Rede Social é removida do Portfólio' do
  @portfolio.reload
  expect(@portfolio.socials.count).to eq 0
  expect(page).to_not have_css('.resource-socials')
end
