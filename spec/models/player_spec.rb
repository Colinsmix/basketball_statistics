require 'spec_helper'

describe Player do
  it { should validate_presence_of :team_id }
  it { should validate_presence_of :position }
  it { should validate_presence_of :height }
  it { should validate_presence_of :weight }
  it { should validate_presence_of :firstname }
  it { should validate_presence_of :lastnam }

  it { should belong_to :team }

  it { should have_many :statlines }
end
