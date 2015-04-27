require 'rails_helper'

describe Project, type: :model do
  it 'should have a valid factory' do
    expect(build_stubbed :project).to be_valid
  end

  it { is_expected.to belong_to :category }
  it { is_expected.to have_and_belong_to_many(:images) }
end

