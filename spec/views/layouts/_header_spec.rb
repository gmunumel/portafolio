require 'rails_helper'

RSpec.describe 'layouts/_header.html.erb', type: :view do

  it 'should show header information' do
    render
    expect(rendered).to have_css("img[src*='logo']")
  end
end