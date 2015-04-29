require 'rails_helper'

RSpec.describe 'Portfolio::Home routing', type: :routing do
  describe 'CRUD' do
    specify '#index' do
      expect(get: '/').           to be_routable
    end
    specify '#create' do
      expect(post: '/home').      not_to be_routable
    end
    specify '#new' do
      expect(get: '/home/new').   not_to be_routable
    end
    specify '#show' do
      expect(get: '/home/1').     not_to be_routable
    end
    specify '#edit' do
      expect(get: '/home/1/edit').not_to be_routable
    end
    specify '#update' do
      expect(put: '/home/1').     not_to be_routable
      expect(patch: '/home/1').   not_to be_routable
    end
    specify '#destroy' do
      expect(delete: '/home/1').  not_to be_routable
    end
  end
end
