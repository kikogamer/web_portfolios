# frozen_string_literal: true

Quando 'remove o bloco Informações Adicionais' do
  find('.remove-block-additional_information').click
  wait_for_ajax
end

Quando 'edita o campo título do bloco informações adicionais' do
  @new_value = FFaker::Lorem.word
  fill_in 'additional-information-title', with: @new_value
end

Quando 'sai do campo título do bloco informações adicionais' do
  script = "document.getElementById('additional-information-title') \
    .dispatchEvent(new Event('change'));"
  page.execute_script(script)
end

Então 'o campo {string} do bloco informações adicionais é atualizado' do |field|
  wait_for_ajax
  @portfolio.reload
  field_content = @portfolio.additional_informations.first[field]
                            .gsub(%r{</?[^>]*>}, '').strip
  expect(field_content).to eq(@new_value)
end

Quando 'edita o campo descrição do bloco informações adicionais' do
  wait_for_ajax
  @new_value = FFaker::Lorem.paragraph
  fill_in_ckeditor('additional_information_description', @new_value)
end

Quando 'sai do campo descrição do bloco informações adicionais' do
  wait_for_ajax
  page.execute_script <<-SCRIPT
    CKEDITOR.instances['additional_information_description'].fire('blur');
  SCRIPT
end
