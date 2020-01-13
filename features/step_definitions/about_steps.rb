# frozen_string_literal: true

Dado 'o portfólio possui um bloco de Sobre Mim' do
  create(:block, kind: :about, side: :left, portfolio_id: @portfolio.id)
end

Quando 'edita o campo sobre mim' do
  wait_for_ajax
  @new_value = FFaker::Lorem.paragraph
  fill_in_ckeditor('about_description', @new_value)
end

Quando 'sai do campo sobre mim' do
  wait_for_ajax
  page.execute_script <<-SCRIPT
    CKEDITOR.instances['about_description'].fire('blur');
  SCRIPT
end

Então 'o campo {string} do bloco sobre mim é atualizado' do |field|
  wait_for_ajax
  @portfolio.reload
  content_field = @portfolio.about[field].gsub(%r{</?[^>]*>}, '').strip
  expect(content_field).to eq(@new_value)
end
