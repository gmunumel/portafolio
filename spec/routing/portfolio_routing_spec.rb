require 'rails_helper'

RSpec.describe 'Portfolio::Portfolio routing', type: :routing do
  describe 'CRUD' do
    specify '#index' do
      expect(get: '/portfolio').       to be_routable
    end
    specify '#create' do
      expect(post: '/portfolio').      not_to be_routable
    end
    specify '#new' do
      expect(get: '/portfolio/new').   not_to be_routable
    end
    specify '#show' do
      expect(get: '/portfolio/1').     to be_routable
    end
    specify '#edit' do
      expect(get: '/portfolio/1/edit').not_to be_routable
    end
    specify '#update' do
      expect(put: '/portfolio/1').     not_to be_routable
      expect(patch: '/portfolio/1').   not_to be_routable
    end
    specify '#destroy' do
      expect(delete: '/portfolio/1').  not_to be_routable
    end
  end
end
