require 'rails_helper'

RSpec.describe 'layouts/_follow.html.erb', type: :view do

  it 'should show follow information' do
    render
    expect(rendered).to have_css('div#follow')
  end
end
