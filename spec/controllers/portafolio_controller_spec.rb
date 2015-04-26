require 'rails_helper'

RSpec.describe Portfolio::PortfolioController, type: :controller do
  let(:projects) {build_stubbed_list(:project, 2)}
  let(:project) {build_stubbed :project}

  specify '#index' do
    expect(Project).to receive(:all).and_return(projects)
    get :index

    expect(assigns(:projects)).to eq projects
    expect(response).to render_template 'index'
  end

  specify '#show' do
    expect(Project).to receive(:find).with(project.id.to_s).and_return(project)
    get :show, id: project.id

    expect(assigns(:project)).to eq project
    expect(response).to render_template 'show'
  end

end