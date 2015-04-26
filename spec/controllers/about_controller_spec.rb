require 'rails_helper'

RSpec.describe Portfolio::AboutController, type: :controller do
  specify '#index' do
    get :index

    expect(response).to render_template 'index'
  end

end
