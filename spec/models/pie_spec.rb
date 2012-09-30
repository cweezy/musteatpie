require 'spec_helper'

describe Pie do
  before do
    attrs =  {
      name: "Apple",
      description: "A delicious pie with apples and cinnomon and heroin.",
      menu_id: 1,
      price: 5.32,
      is_vegan: false,
      is_vegetarian: true
    }
    @pie = Pie.new(attrs)
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
