require 'rails_helper'
require 'will_paginate/array'

RSpec.describe 'blog/index.html.erb', type: :view do
  context 'post exist' do
    let(:posts) do
      items = build_stubbed_list :post, 5
      items.paginate(:page => 2, :per_page => 2)
    end

    before :each do
      assign(:posts, posts)
    end

    it 'calls will_paginate gem' do
      allow(view).to receive(:will_paginate).and_return('success')
      render
      expect(rendered).to match /success/
    end
  end
end