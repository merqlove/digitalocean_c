require 'spec_helper'

describe "integrations" do
  subject(:region) { DigitaloceanC::Region }

  before { DigitaloceanC.send(:setup_request!) }

  it "makes a real call" do
    regions = region.all
    regions.status.should eq "ERROR"
  end
end
