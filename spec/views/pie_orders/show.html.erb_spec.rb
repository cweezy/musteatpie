require 'spec_helper'

describe "pie_orders/show" do
  before(:each) do
    @pie_order = assign(:pie_order, stub_model(PieOrder,
      :pie_id => 1,
      :quantity => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
