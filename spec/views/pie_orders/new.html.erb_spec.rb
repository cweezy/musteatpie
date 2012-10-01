require 'spec_helper'

describe "pie_orders/new" do
  before(:each) do
    assign(:pie_order, stub_model(PieOrder,
      :pie_id => 1,
      :quantity => 1
    ).as_new_record)
  end

  it "renders new pie_order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pie_orders_path, :method => "post" do
      assert_select "input#pie_order_pie_id", :name => "pie_order[pie_id]"
      assert_select "input#pie_order_quantity", :name => "pie_order[quantity]"
    end
  end
end
