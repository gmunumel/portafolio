require 'rails_helper'

RSpec.describe 'Portfolio::Contact routing', type: :routing do
  describe 'CRUD' do
    specify '#index' do
      expect(get: '/contact').       to be_routable
    end
    specify '#create' do
      expect(post: '/contact').      not_to be_routable
    end
    specify '#new' do
      expect(get: '/contact/new').   not_to be_routable
    end
    specify '#show' do
      expect(get: '/contact/1').     not_to be_routable
    end
    specify '#edit' do
      expect(get: '/contact/1/edit').not_to be_routable
    end
    specify '#update' do
      expect(put: '/contact/1').     not_to be_routable
      expect(patch: '/contact/1').   not_to be_routable
    end
    specify '#destroy' do
      expect(delete: '/contact/1').  not_to be_routable
    end
  end
end
