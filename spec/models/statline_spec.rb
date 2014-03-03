require 'spec_helper'

describe Statline do
  it { should validate_presence_of :player_id }
  it { should validate_presence_of :game_id }

  it { should belong_to :player }
  it { should belong_to :game }
  
end
