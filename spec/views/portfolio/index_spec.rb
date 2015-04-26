require 'rails_helper'

RSpec.describe "portfolio/index.html.erb", type: :view do
  context 'projects exist' do
    let(:projects) {build_stubbed_list(:project, 3)}

    before :each do
      assign(:projects, projects)
    end

    it "calls index page" do
      render
      expect(rendered).to match /Portfolio/
    end
  end
end