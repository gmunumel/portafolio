require 'rails_helper'

RSpec.describe 'blog/show.html.erb', type: :view do
  let(:post) { build_stubbed(:post) }

  describe 'the post exists' do
    before :each do
      assign(:post, post)
      render
    end

    it 'should show information about the post' do
      expect(rendered).to have_css('div.blog-item-single h3', text: post.title)
      expect(rendered).to have_css('div.blog-item-single-content p', text: post.text)
    end
  end
end
