require 'spec_helper'

describe "StatLines" do
  describe "GET /stat_lines" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get stat_lines_path
      response.status.should be(200)
    end
  end
end
