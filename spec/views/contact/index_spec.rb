require 'rails_helper'

RSpec.describe 'contact/index.html.erb', type: :view do
  it 'calls index page' do
    render
    expect(rendered).to match /Contact me/
  end
end
