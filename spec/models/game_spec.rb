require 'spec_helper'

describe Game do
  it { should validate_presence_of :hteam_id }
  it { should validate_presence_of :ateam_id }
  it { should validate_presence_of :hteamscore }
  it { should validate_presence_of :ateamscore }


  it { should have_many :statlines }
  it { should have_many(:players).through(:teams) }
end
