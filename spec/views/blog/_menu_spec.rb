require 'rails_helper'

RSpec.describe 'blog/_menu.html.erb', type: :view do

  it 'should show blog information' do
    render template: 'blog/_menu', layout: 'layouts/application'
    expect(rendered).to have_link('Home', href: root_path)
    expect(rendered).to have_link('About', href: about_index_path)
    expect(rendered).to have_link('Portfolio', href: portfolio_index_path)
    expect(rendered).to have_link('Blog →', href: blog_index_path)
    expect(rendered).to have_link('Contact', href: contact_index_path)
  end
end
