require 'spec_helper'

describe Player do
  it { should validate_presence_of :team_id }
  it { should validate_presence_of :position }
  it { should validate_presence_of :height }
  it { should validate_presence_of :weight }
  it { should validate_presence_of :firstname }
  it { should validate_presence_of :lastname }

  it { should belong_to :team }

  it { should have_many :statlines }

  context 'Uniqueness' do
    before(:each) do
      FactoryGirl.create(:player)
    end
    it { should validate_uniqueness_of :firstname }
  end
end
