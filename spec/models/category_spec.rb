require 'rails_helper'

describe Category, type: :model do
  it 'should have a valid factory' do
    expect(build_stubbed :category).to be_valid
  end

  it { is_expected.to have_one(:project) }
end
