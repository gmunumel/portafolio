require 'rails_helper'
require 'will_paginate/array'

RSpec.describe Portfolio::BlogController, type: :controller do
  let(:posts) {build_stubbed_list(:post, 2)}
  let(:post) {build_stubbed :post}

  specify '#index' do
=begin
    expect(Post).to receive_messages(
                        :paginate => (:page => "2"),
                    ).and_return( posts.paginate(per_page: 2) )
=end
    expect(Post).to receive(:paginate).with(page: "2", order: 'created_at DESC').
                           and_return( posts.paginate(per_page: 2) )
    get :index, page: 2

    expect(assigns(:posts).count).to eq 2
    expect(response).to render_template 'index'
  end

  specify '#show' do
    expect(Post).to receive(:find).with(post.id.to_s).and_return(post)
    get :show, id: post.id

    expect(assigns(:post)).to eq post
    expect(response).to render_template 'show'
  end

end
