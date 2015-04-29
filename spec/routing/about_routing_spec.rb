require 'rails_helper'

RSpec.describe 'Portfolio::About routing', type: :routing do
  describe 'CRUD' do
    specify '#index' do
      expect(get: '/about').       to be_routable
    end
    specify '#create' do
      expect(post: '/about').      not_to be_routable
    end
    specify '#new' do
      expect(get: '/about/new').   not_to be_routable
    end
    specify '#show' do
      expect(get: '/about/1').     not_to be_routable
    end
    specify '#edit' do
      expect(get: '/about/1/edit').not_to be_routable
    end
    specify '#update' do
      expect(put: '/about/1').     not_to be_routable
      expect(patch: '/about/1').   not_to be_routable
    end
    specify '#destroy' do
      expect(delete: '/about/1').  not_to be_routable
    end
  end
end