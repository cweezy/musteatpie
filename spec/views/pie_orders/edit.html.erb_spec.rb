require 'spec_helper'

describe "pie_orders/edit" do
  before(:each) do
    @pie_order = assign(:pie_order, stub_model(PieOrder,
      :pie_id => 1,
      :quantity => 1
    ))
  end

  it "renders the edit pie_order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pie_orders_path(@pie_order), :method => "post" do
      assert_select "input#pie_order_pie_id", :name => "pie_order[pie_id]"
      assert_select "input#pie_order_quantity", :name => "pie_order[quantity]"
    end
  end
end
