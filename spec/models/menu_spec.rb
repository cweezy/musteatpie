require 'spec_helper'

describe Menu do
  before do
    @menu = Menu.new(
      is_sweet: true,
      name: "Summer 2020 Sweet Pies",
      is_current: true,
      image_url: "http://somewhere.com/somepic.jpg"
    )
  end

  subject { @menu }

  it { should respond_to :name }
  it { should respond_to :image_url }
  it { should respond_to :is_sweet }
  it { should respond_to :is_current }
  it { should respond_to :pies }

  it { should be_valid }

  describe "when is_sweet isn't present" do
    before { @menu.is_sweet = nil }
    it { should_not be_valid }
  end
  
end
