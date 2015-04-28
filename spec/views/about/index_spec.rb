require 'rails_helper'

RSpec.describe 'about/index.html.erb', type: :view do
  it 'calls index page' do
    render
    expect(rendered).to match /This is a bit about me/
  end
end
