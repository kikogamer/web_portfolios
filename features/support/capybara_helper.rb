# frozen_string_literal: true

# Capybara helper
module CapybaraHelper
  def fill_in_ckeditor(locator, content)
    page.execute_script <<-SCRIPT
      CKEDITOR.instances['#{locator}'].setData('#{content}');
      $('textarea##{locator}').text('#{content}');
    SCRIPT
  end
end

World(CapybaraHelper)
