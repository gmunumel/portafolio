require 'rails_helper'

describe Image, type: :model do
  it 'should have a valid factory' do
    expect(build_stubbed :image).to be_valid
  end

  it { is_expected.to have_and_belong_to_many(:projects) }
  it { is_expected.to have_and_belong_to_many(:posts) }
end

