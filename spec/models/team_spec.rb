require 'spec_helper'

describe Team do
  it { should validate_presence_of :name }
  it { should validate_presence_of :location }

  it { should have_many :homegames }
  it { should have_many :awaygames }


  context 'Uniqueness' do
    before :each do
      FactoryGirl.create(:team)
    end

    it { should validate_uniqueness_of(:name).scoped_to(:location) }

  end
end
