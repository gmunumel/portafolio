require 'rails_helper'

RSpec.describe 'Portfolio::Blog routing', type: :routing do
  describe 'CRUD' do
    specify '#index' do
      expect(get: '/blog').       to be_routable
    end
    specify '#create' do
      expect(post: '/blog').      not_to be_routable
    end
    specify '#new' do
      expect(get: '/blog/new').   not_to be_routable
    end
    specify '#show' do
      expect(get: '/blog/1').     to be_routable
    end
    specify '#edit' do
      expect(get: '/blog/1/edit').not_to be_routable
    end
    specify '#update' do
      expect(put: '/blog/1').     not_to be_routable
      expect(patch: '/blog/1').   not_to be_routable
    end
    specify '#destroy' do
      expect(delete: '/blog/1').  not_to be_routable
    end
  end
end
