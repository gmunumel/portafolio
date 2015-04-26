require 'rails_helper'

RSpec.describe 'layouts/application.html.erb', type: :view do
  describe 'renders' do
    specify 'header' do
      render and expect(view).to render_template /layouts\/_header/
    end

    specify 'menu' do
      render and expect(view).to render_template /layouts\/_menu/
    end

    specify 'follow' do
      render and expect(view).to render_template /layouts\/_follow/
    end

    specify 'footer' do
      render and expect(view).to render_template /layouts\/_footer/
    end
  end
end