require 'rails_helper'

RSpec.describe 'layouts/_footer.html.erb', type: :view do

  it 'should show footer information' do
    render
    expect(rendered).to have_css('div.google a')
    expect(rendered).to have_css('div.facebook a')
    expect(rendered).to have_css('div.linkedin a')
  end
end
