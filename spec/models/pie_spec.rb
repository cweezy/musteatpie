require 'spec_helper'

describe Pie do
  before do
    @menu = Menu.create(
      is_sweet: true,
      name: "Summer 2020 Sweet Pies",
      is_current: true,
      image_url: "http://somewhere.com/somepic.jpg"
    )
    @pie = Pie.new(
      name: "Apple",
      description: "A delicious pie with apples and cinnomon and heroin.",
      price: 5.32,
      is_vegan: false,
      is_vegetarian: true,
      menu: @menu
    )
  end

  subject { @pie }

  it { should respond_to :name }
  it { should respond_to :description }
  it { should respond_to :price }
  it { should respond_to :is_vegan }
  it { should respond_to :is_vegetarian }

  it { should be_valid }

  describe "when menu_id isn't present" do
    before { @pie.menu_id = nil }
    it { should_not be_valid }
  end
end
