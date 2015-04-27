require 'rails_helper'

RSpec.describe 'portfolio/_projects.html.erb', type: :view do
  let(:projects) {build_stubbed_list(:project, 3)}

  describe 'projects exists' do
    before :each do
      assign(:projects, projects)
    end

    it 'should show projects information' do
      render template: 'portfolio/_projects',
             layout: 'layouts/application',
             locals: {projects: projects}
      expect(rendered).to have_css('div.project-summary')
      expect(rendered).to have_css('div.one-third')
      expect(rendered).to have_css('div.one-third-last')
    end
  end
end
