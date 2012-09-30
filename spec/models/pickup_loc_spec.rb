require 'spec_helper'

describe PickupLoc do
  before do
    @pl = PickupLoc.create(
      name: "Bedford Ave Station",
      description: "At the corner of North 7th and Bedford Ave. Great place to check out the scene."
    )
  end

  subject { @pl }

  it { should respond_to :name }
  it { should respond_to :description }
  
  it { should be_valid }
end
