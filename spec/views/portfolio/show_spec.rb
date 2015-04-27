require 'rails_helper'

RSpec.describe 'portfolio/show.html.erb', type: :view do
  let(:project) { build_stubbed(:project) }
  let(:projects) { build_stubbed_list(:project, 3) }

  describe 'the project exists' do
    before :each do
      assign(:project, project)
      assign(:projects, projects)
      render
    end

    it 'should show information about the project' do
      expect(rendered).to have_css('div#description h3', text: project.title)
      expect(rendered).to have_css('div#description p', text: project.text)
    end
  end
end
