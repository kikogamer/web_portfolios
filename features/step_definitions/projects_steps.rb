# frozen_string_literal: true

Dado 'o portfólio possui um bloco de Projetos' do
  create(:block, kind: :project, side: :right, portfolio_id: @portfolio.id)
end

Quando 'adiciona um novo Projeto do tipo {string}' do |kind|
  @project = attributes_for(:project)
  fill_in 'project-title', with: @project[:title]
  fill_in 'project-description', with: @project[:description]
  select kind, from: 'select-project-kind'
  fill_in 'project-url', with: @project[:url]
  find('#add-project').click
  wait_for_ajax
end

Então 'o Projeto é adicionado ao Portfólio' do
  @portfolio.reload
  expect(@portfolio.projects.count).to eq 1
  expect(page).to have_css('.resource-project', count: 1)
end

Dado 'o portfólio possui 1 projeto' do
  create(:block, kind: :project, side: :right, portfolio_id: @portfolio.id)
  @skill = create(:project, portfolio_id: @portfolio.id)
end

Quando 'remove o Projeto' do
  find('.remove-project').click
  wait_for_ajax
end

Então 'o Projeto é removido do Portfólio' do
  @portfolio.reload
  expect(@portfolio.projects.count).to eq 0
  expect(page).to_not have_css('.resource-projects')
end
