require 'spec_helper'

describe Team do
  it { should validate_presence_of :name }
  it { should validate_presence_of :location }

  it { should have_many :homegames }
  it { should have_many :awaygames }
  it { should have_many(:statlines).through(:games) }
end
